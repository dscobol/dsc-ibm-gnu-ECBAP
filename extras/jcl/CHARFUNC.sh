#!/bin/bash

# Compile and run CHARFUNC

# static parms
SYSLIB="../cpy"

# Program parms
PGM=CHARFUNC
export DD_QIFAVIN="../data/favin.dat.txt"

# clean up
rm ../bin/$PGM

cobc -x ../cbl/$PGM.cbl -I $SYSLIB -o ../bin/$PGM

if [ "$?" -eq 0 ]; then
    ../bin/$PGM
else
    echo "Complier Return code not ZERO."
fi
