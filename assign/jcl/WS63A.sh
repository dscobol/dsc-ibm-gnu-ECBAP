#!/bin/bash

# Compile and run WS63A

# static parms
SYSLIB="../cpy"

# Program parms
PGM=WS63A
export DD_QIFAVIN="../data/favin.dat.txt"
export DD_ROFAVIN="../spool/ws63a-report.rpt"

# clean up
rm ../bin/$PGM
rm $DD_ROFAVIN

cobc -x ../cbl/$PGM.cbl -I $SYSLIB -o ../bin/$PGM 

if [ "$?" -eq 0 ]; then
    ../bin/$PGM
else
    echo "Complier Return code not ZERO."
fi
