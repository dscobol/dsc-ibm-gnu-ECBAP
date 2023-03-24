#!/bin/bash

# Compile and run PAYROL01

# static parms
SYSLIB="../cpy"

# Program parms
PGM=PAYROL01
export DD_QIPAYROLL="../data/payrol01.dat.txt"

# clean up
rm ../bin/$PGM

cobc -x ../cbl/$PGM.cbl -I $SYSLIB -o ../bin/$PGM

if [ "$?" -eq 0 ]; then
    ../bin/$PGM
else
    echo "Complier Return code not ZERO."
fi
