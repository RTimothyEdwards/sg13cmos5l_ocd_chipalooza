#!/usr/bin/env python3
"""Check that every derived view is newer than what it was derived from.

WHY THIS EXISTS.  On 2026-09-25 a chipalooza_frame LVS run reported
"Netlists do not match" and the hunt for the cause went through the
router, the analog bus indexing, three netgen experiments and a suspected
netgen regression before the real answer turned up:  the schematic netlist
had been extracted BEFORE the symbols were regenerated, so the instance
pin order in the netlist no longer agreed with the symbol it came from.
Nothing in the flow complains about that.  This script does.

It only compares modification times.  That is enough, because every
relationship here is "regenerate B whenever A changes", and it is the
check nobody remembers to do by hand.

    scripts/check_staleness.py            report and exit 1 if stale
    scripts/check_staleness.py --quiet    exit status only

The chain, in dependency order:

    verilog/rtl/*.v         --librelane-->  verilog/gl/*.pnl.v
    verilog/gl/*.pnl.v      --gen syms -->  xschem/*.sym
    magic/slot*.mag         --gen syms -->  xschem/slot*.sym, gl/*_lvs.v
    xschem/*.sch + *.sym    --xschem   -->  netlist/schematic/*.spice
    magic/*.mag             --magic    -->  netlist/layout/*.spice
    verilog/rtl + gl/*.pnl  --yosys    -->  validate/lvs/*.struct.v
    everything              --netgen   -->  the comp*.out reports
"""

import os
import sys
import glob

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


def mtime(path):
    try:
        return os.path.getmtime(path)
    except OSError:
        return None


def expand(patterns):
    out = []
    for p in patterns:
        out.extend(sorted(glob.glob(os.path.join(ROOT, p))))
    return out


# (derived, [sources], how to regenerate)
RULES = [
    ("verilog/gl/housekeeping_top.pnl.v",
     ["verilog/rtl/housekeeping.v", "verilog/rtl/housekeeping_spi.v",
      "verilog/rtl/sequencer.v", "verilog/rtl/pattern.v",
      "verilog/rtl/router.v", "verilog/rtl/lfsr.v",
      "verilog/rtl/housekeeping_top.v"],
     "re-run librelane synthesis for housekeeping_top"),

    ("verilog/gl/user_project_control.pnl.v",
     ["verilog/rtl/user_project_control.v"],
     "re-run librelane synthesis for user_project_control"),

    ("xschem/housekeeping_top.sym",
     ["verilog/gl/housekeeping_top.pnl.v", "scripts/gen_xschem_sym.py"],
     "scripts/run_gen_xschem_syms.sh"),

    ("xschem/user_project_control.sym",
     ["verilog/gl/user_project_control.pnl.v", "scripts/gen_xschem_sym.py"],
     "scripts/run_gen_xschem_syms.sh"),

    ("netlist/schematic/chipalooza_frame.spice",
     ["xschem/chipalooza_frame.sch", "xschem/*.sym"],
     "xschem/run_extract_chipalooza_frame.sh"),

    ("netlist/layout/chipalooza_frame.spice",
     ["magic/chipalooza_frame.mag"],
     "the magic extraction script for chipalooza_frame"),

    ("validate/lvs/blackboxes.v",
     ["verilog/gl/housekeeping_top.pnl.v",
      "verilog/gl/user_project_control.pnl.v",
      "verilog/rtl/slot1_wrapper.v", "verilog/rtl/sram_stub.v",
      "validate/lvs/gen_blackboxes.py"],
     "validate/lvs/gen_blackboxes.py > validate/lvs/blackboxes.v"),

    ("validate/lvs/chipalooza_frame.struct.v",
     ["verilog/rtl/chipalooza_frame.v", "validate/lvs/blackboxes.v",
      "validate/lvs/lvs_top.v"],
     "make netlist   (in validate/lvs)"),

    ("validate/lvs/comp.out",
     ["validate/lvs/chipalooza_frame.struct.v",
      "netlist/schematic/chipalooza_frame.spice",
      "validate/lvs/setup.tcl"],
     "make lvs   (in validate/lvs)"),

    ("validate/comp_chipalooza_frame.out",
     ["netlist/layout/chipalooza_frame.spice",
      "netlist/schematic/chipalooza_frame.spice",
      "verilog/gl/housekeeping_top.pnl.v",
      "verilog/gl/user_project_control.pnl.v",
      "verilog/gl/slot1_wrapper_lvs.v"],
     "validate/run_lvs_chipalooza_frame.sh"),
]

# The 18 slot wrappers, generated as a set from the layouts.
for _n in range(1, 19):
    RULES.append((
        f"verilog/gl/slot{_n}_wrapper_lvs.v",
        [f"magic/slot{_n}_wrapper.mag", "scripts/gen_xschem_sym.py"],
        "scripts/run_gen_xschem_syms.sh"))
    RULES.append((
        f"xschem/slot{_n}_wrapper.sym",
        [f"magic/slot{_n}_wrapper.mag", "scripts/gen_xschem_sym.py"],
        "scripts/run_gen_xschem_syms.sh"))


def main(argv):
    quiet = "--quiet" in argv
    stale, missing = [], []

    for derived, sources, how in RULES:
        dpath = os.path.join(ROOT, derived)
        dt = mtime(dpath)
        if dt is None:
            missing.append((derived, how))
            continue
        newer = []
        for s in expand([sources] if isinstance(sources, str) else sources):
            st = mtime(s)
            if st is not None and st > dt:
                newer.append((os.path.relpath(s, ROOT), st - dt))
        if newer:
            stale.append((derived, how, newer))

    if not quiet:
        if missing:
            print("NOT BUILT")
            for d, how in missing:
                print(f"   {d}\n        build with:  {how}")
            print()
        if stale:
            print("STALE  (a source is newer than the derived view)")
            for d, how, newer in stale:
                print(f"   {d}")
                for s, age in sorted(newer, key=lambda t: -t[1]):
                    mins = age / 60.0
                    print(f"        older than {s}  by {mins:.0f} min")
                print(f"        rebuild with:  {how}")
            print()
        if not stale and not missing:
            print(f"UP TO DATE  ({len(RULES)} derived views checked)")
        else:
            print(f"{len(stale)} stale, {len(missing)} not built, "
                  f"{len(RULES)} checked")

    return 1 if stale else 0


sys.exit(main(sys.argv[1:]))
