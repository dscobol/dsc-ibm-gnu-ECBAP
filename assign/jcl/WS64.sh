#!/bin/bash

# Compile and run WS64

# static parms
SYSLIB="../cpy"

# Program parms
PGM=WS64
export DD_QIINVALUES="../data/invals.dat.txt"

# clean up
rm ../bin/$PGM

cobc -x ../cbl/$PGM.cbl -I $SYSLIB -o ../bin/$PGM 

if [ "$?" -eq 0 ]; then
    ../bin/$PGM
else
    echo "Complier Return code not ZERO."
fi
