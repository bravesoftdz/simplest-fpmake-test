#!/bin/bash
set -e

echo 'FPCDIR is '"$FPCDIR"
fpc fpmake.pp

# ./fpmake --globalunitdir="$FPCDIR"

# This should "just work" with FPC installed system-wide
./fpmake
