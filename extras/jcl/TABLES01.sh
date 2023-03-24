#!/bin/bash

# Compile and run TABLES01

# static parms
SYSLIB="../cpy"

# Program parms
PGM=TABLES01
export DD_QIEMPPROJ="../data/emp1.proj.dat.txt"

# clean up
rm ../bin/$PGM

cobc -x ../cbl/$PGM.cbl -I $SYSLIB -o ../bin/$PGM

if [ "$?" -eq 0 ]; then
    ../bin/$PGM
else
    echo "Complier Return code not ZERO."
fi
