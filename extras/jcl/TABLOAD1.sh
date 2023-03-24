#!/bin/bash

# Compile and run TABLOAD1

# static parms
SYSLIB="../cpy"

# Program parms
PGM=TABLOAD1
export DD_QITABLOAD="../data/becsv.dat.txt"

# clean up
rm ../bin/$PGM

cobc -x ../cbl/$PGM.cbl -I $SYSLIB -o ../bin/$PGM

if [ "$?" -eq 0 ]; then
    ../bin/$PGM
else
    echo "Complier Return code not ZERO."
fi
