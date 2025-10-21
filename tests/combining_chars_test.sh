#!/bin/bash
# Test for Unicode combining character support
# Tests that par correctly handles combining diacritical marks

set -e
unset PARINIT

PARTESTRETURN=0
if [ "$1" != "" ] ; then
PAR="$1"
else
PAR="par"
fi

# Test 1: E + combining acute (É) should be counted as single visual width
# AAAAAAAA (8) + space (1) + É (1 visual) = 10, should fit in width 10
echo -n "Combining character test 1: "
OUTPUT=$(printf 'AAAAAAAA E\u0301' | ${PAR} 10)
LINES=$(echo "$OUTPUT" | wc -l)
if [ "$LINES" -eq 1 ]; then
echo "SUCCESS (combining char counted correctly)"
else
echo "FAIL (should fit on one line)"
echo "$OUTPUT"
echo "----"
PARTESTRETURN=1
fi

# Test 2: When line is full, combining character should cause proper line break
# AAAAAAAAAA (10) + space + É should break to next line
echo -n "Combining character test 2: "
OUTPUT=$(printf 'AAAAAAAAAA E\u0301' | ${PAR} 10)
LINES=$(echo "$OUTPUT" | wc -l)
if [ "$LINES" -eq 2 ]; then
echo "SUCCESS (proper line break)"
else
echo "FAIL (should break to next line)"
echo "$OUTPUT"
echo "----"
PARTESTRETURN=1
fi

# Test 3: Multiple combining characters in a paragraph
echo -n "Combining character test 3: "
OUTPUT=$(printf 'Cafe\u0301 with E\u0301le\u0300ve' | ${PAR} 30)
if [ $? -eq 0 ]; then
echo "SUCCESS (multiple combining chars)"
else
echo "FAIL (error processing multiple combining chars)"
PARTESTRETURN=1
fi

exit $PARTESTRETURN
