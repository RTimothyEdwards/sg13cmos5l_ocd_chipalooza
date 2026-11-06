#!/bin/bash
#
# Open Circuit Design "Chipalooza" harness for IHP SG13CMOS5L
#
# Custom project setup:
#
# Run this script to create and install magic views for any
# custom pad cells supplied by the designers.
#
# Usage:
#	Run this script in the repository top level directory.
#
#	setenv PDK_ROOT <path/above/IHP/pdk>
#	scripts/setup_custom.sh
#
#
# Note:
#	This project is based on the process "ihp-sg13cmos5l".
#
# Warning:
#	The generated .mag files contain references back to the
#	user repository submodules.  If the user updates the
#	repository, then the references may become invalid, and
#	this setup should be re-run.  It is expected that this
#	script is always run after fetching and installing the
#	project dependencies.
#
# A custom pad is named in the "Pad type" field of a slot's
# "s<x>_an[<y>]" entry in config.txt.  Its views are looked for
# in the submodule of every slot that names it, and only if not
# found there, in all of dependencies/.  The GDS is required;
# LEF and SPICE (or CDL) are optional and are used to annotate
# the layout.  Each view must be a file named after the pad
# (e.g., "sg13cmos5l_IOPadDiff2Single.gds" or ".gds.gz"), and is
# looked for in final/<view>/, <view>/, and pads/<pad name>/ of
# the submodule, in that order, and then anywhere in the
# submodule.  More than one candidate for the same view is an
# error, because which of them is the real one must not be a
# guess.
#
# A custom pad is a standalone cell and not part of a library,
# so after the GDS is read, its GDS_END property is removed and
# GDS_START is set to 0.  This forces magic to write out the
# entire GDS file for the pad, with all of its subcells prefixed,
# so that subcells of different pads which happen to have the
# same name cannot collide in the chip GDS.

export PDK_ROOT=${PDK_ROOT:-/home/tim/gits}
export PDK=${PDK:-ihp-sg13cmos5l}

set -u

config="config.txt"
depdir="dependencies"
iolib="magic/sg13cmos5l_io"
customdir="magic/custom_io"

warn() { echo "$@" >&2; }

if [ ! -f "$config" ] || [ ! -d .git ]; then
    warn "setup_custom.sh: run this from the repository top level."
    exit 1
fi
if [ ! -d "$iolib" ]; then
    warn "setup_custom.sh: $iolib/ does not exist --- run \"make setup\" first."
    exit 1
fi

# 1. Parse the config.txt file for pad names.  Find all pad names that do NOT
#    have corresponding .mag files in the magic/sg13cmos5l_io/ directory (assumes
#    that "scripts/setup.sh" was already run).
#
#    PADSLOTS[pad] is the list of slots that use the pad.

declare -A PADSLOTS
padlist=()

while read -r slot pad; do
    [ -f "$iolib/$pad.mag" ] && continue
    if [ -z "${PADSLOTS[$pad]+x}" ]; then
	padlist+=("$pad")
	PADSLOTS[$pad]="$slot"
    else
	PADSLOTS[$pad]+=" $slot"
    fi
done < <(sed -n 's/^s\([0-9][0-9]*\)_an\[[0-9][0-9]*\]:[[:space:]]*\([^[:space:]]*\).*/\1 \2/p' "$config")

if [ ${#padlist[@]} -eq 0 ]; then
    echo "No custom pads named in $config."
    exit 0
fi

echo "Custom pads named in $config:"
for pad in "${padlist[@]}"; do
    echo "    $pad  (slot ${PADSLOTS[$pad]// /, })"
done
echo ""

# 2. Scan all of the submodules in "dependencies" looking for .gds or .gds.gz
#    files for the pads not otherwise found in magic/sg13cmos5l_io/.  Save a
#    list of the paths to these GDS files.  Find all cell views starting with
#    the I/O cell name and keep the path of any ".lef", ".spice", or ".cdl"
#    file, for annotation.

# Find one view of a pad in one directory tree.  Prints the path;  a
# diagnostic goes to stderr, and the return code is 0 if one file was
# found, 1 if none was found, and 2 if the choice is ambiguous.

find_in_tree() {	# $1 = tree, $2 = pad, $3 = view directory, $4... = file names
    local tree="$1" pad="$2" view="$3" d f found=()
    shift 3
    local -a names=("$@") dirs=("$tree/final/$view" "$tree/$view" "$tree/pads/$pad")

    for d in "${dirs[@]}"; do
	[ -d "$d" ] || continue
	found=()
	for f in "${names[@]}"; do
	    [ -f "$d/$f" ] && found+=("$d/$f")
	done
	if [ ${#found[@]} -gt 1 ]; then
	    warn "$pad: ERROR more than one $view view in $d/:"
	    printf '        %s\n' "${found[@]}" >&2
	    warn "    remove all but one;  which of them is used must not be a guess."
	    return 2
	fi
	if [ ${#found[@]} -eq 1 ]; then
	    echo "${found[0]}"
	    return 0
	fi
    done

    # Last resort:  anywhere in the tree.
    local -a expr=()
    for f in "${names[@]}"; do
	[ ${#expr[@]} -gt 0 ] && expr+=(-o)
	expr+=(-name "$f")
    done
    found=()
    while IFS= read -r f; do
	found+=("$f")
    done < <(find "$tree" -name .git -prune -o -type f \( "${expr[@]}" \) -print 2>/dev/null | sort)

    if [ ${#found[@]} -gt 1 ]; then
	warn "$pad: ERROR more than one candidate $view view in $tree/:"
	printf '        %s\n' "${found[@]}" >&2
	warn "    leave exactly one;  which of them is used must not be a guess."
	return 2
    fi
    if [ ${#found[@]} -eq 1 ]; then
	echo "${found[0]}"
	return 0
    fi
    return 1
}

# Find one view of a pad, first in the submodules of the slots that use
# the pad, then in all of the dependencies.  Same return codes as above.

find_pad_view() {	# $1 = pad, $2 = view directory, $3... = file names
    local pad="$1" view="$2" n tree result rc found=() trees=()
    shift 2

    for n in ${PADSLOTS[$pad]}; do
	[ -d "$depdir/slot_$n" ] && trees+=("$depdir/slot_$n")
    done
    for tree in "${trees[@]}"; do
	result=$(find_in_tree "$tree" "$pad" "$view" "$@"); rc=$?
	[ $rc -eq 2 ] && return 2
	[ $rc -eq 0 ] && found+=("$result")
    done
    if [ ${#found[@]} -eq 0 ]; then
	for tree in "$depdir"/*/; do
	    tree="${tree%/}"
	    result=$(find_in_tree "$tree" "$pad" "$view" "$@"); rc=$?
	    [ $rc -eq 2 ] && return 2
	    [ $rc -eq 0 ] && found+=("$result")
	done
    fi

    if [ ${#found[@]} -gt 1 ]; then
	warn "$pad: ERROR $view views found in more than one submodule:"
	printf '        %s\n' "${found[@]}" >&2
	warn "    which of them is used must not be a guess."
	return 2
    fi
    if [ ${#found[@]} -eq 1 ]; then
	echo "${found[0]}"
	return 0
    fi
    return 1
}

failed=0
gdslist=()
declare -A GDSFILE LEFFILE SPICEFILE

for pad in "${padlist[@]}"; do
    gds=$(find_pad_view "$pad" gds "$pad.gds" "$pad.gds.gz"); rc=$?
    if [ $rc -ne 0 ]; then
	[ $rc -eq 1 ] && warn "$pad: ERROR no $pad.gds or $pad.gds.gz found in $depdir/"
	failed=$((failed + 1))
	continue
    fi
    lef=$(find_pad_view "$pad" lef "$pad.lef"); rc=$?
    if [ $rc -eq 2 ]; then
	failed=$((failed + 1))
	continue
    fi
    spice=$(find_pad_view "$pad" spice "$pad.spice" "$pad.cdl"); rc=$?
    if [ $rc -eq 2 ]; then
	failed=$((failed + 1))
	continue
    fi

    # Absolute paths, because magic records the GDS path in the .mag file
    # and is run from a different directory.
    GDSFILE[$pad]=$(realpath "$gds")
    LEFFILE[$pad]=${lef:+$(realpath "$lef")}
    SPICEFILE[$pad]=${spice:+$(realpath "$spice")}
    gdslist+=("$pad")

    echo "$pad:"
    echo "    GDS:    $gds"
    echo "    LEF:    ${lef:-(none)}"
    echo "    SPICE:  ${spice:-(none)}"
done
echo ""

# 3. Loop through the list of GDS files found

for pad in "${gdslist[@]}"; do

    # Create "custom_io" directory under magic/ for the library if it doesn't exist.
    mkdir -p "$customdir"

    gdsfile="${GDSFILE[$pad]}"
    if [ -n "${LEFFILE[$pad]}" ]; then
	lefcmd="lef read ${LEFFILE[$pad]}"
    else
	lefcmd="# (no LEF view)"
    fi
    if [ -n "${SPICEFILE[$pad]}" ]; then
	spicecmd="readspice ${SPICEFILE[$pad]}"
    else
	spicecmd="# (no SPICE view)"
    fi

    log=$(mktemp)
    stamp=$(mktemp)
    magic -dnull -noconsole -rcfile ${PDK_ROOT}/${PDK}/libs.tech/magic/${PDK}.magicrc << EOF 2>&1 | tee "$log"
drc off
crashbackups stop
locking disable
#
# Prepare for library import
gds readonly true
gds rescale false
cd $customdir
gds read $gdsfile
cellname delete {(UNNAMED)}
if {[lsearch -exact [cellname list allcells] $pad] < 0} {
    puts stderr "SETUP_CUSTOM_ERROR: $gdsfile contains no cell named $pad"
    quit -noprompt
}
load $pad

# Force the entire GDS file to be written out with all subcells
# prefixed, so that subcell names cannot collide with other pads.
property GDS_END ""
property GDS_START 0

# Annotate with LEF
$lefcmd

# Annotate with SPICE
$spicecmd

# Write the .mag file out
writeall force
quit -noprompt
EOF
    # The stamp is created before magic starts, so a .mag file left over
    # from an earlier run does not count.
    if grep -q SETUP_CUSTOM_ERROR "$log" || [ ! "$customdir/$pad.mag" -nt "$stamp" ]; then
	warn "$pad: ERROR magic did not produce $customdir/$pad.mag"
	failed=$((failed + 1))
    fi
    rm -f "$log" "$stamp"
done

if [ $failed -gt 0 ]; then
    warn ""
    warn "$failed custom pad(s) had problems (see above)."
    exit 1
fi

echo "Done!"
exit 0
