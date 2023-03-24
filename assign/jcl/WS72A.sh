#!/bin/bash

# Compile and run WS72A

# static parms
SYSLIB="../cpy"

# Program parms
PGM=WS72A
export DD_QIFAVIN="../data/favin.dat.txt"
export DD_ROFAVIN="../spool/ws720-report.rpt"

# clean up
rm ../bin/$PGM
rm $DD_ROFAVIN

cobc -x ../cbl/$PGM.cbl -I $SYSLIB -o ../bin/$PGM 

if [ "$?" -eq 0 ]; then
    ../bin/$PGM
else
    echo "Complier Return code not ZERO."
fi
