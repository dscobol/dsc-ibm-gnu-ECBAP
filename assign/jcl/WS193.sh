#!/bin/bash

# Compile and run WS193

# static parms
SYSLIB="../cpy"

# Program parms
PGM=WS193
export DD_QIINSCLAIM="../data/insclaim.dat.txt"
export DD_ROINSRPT="../spool/ws193-insclaim-report.rpt"

# clean up
rm ../bin/$PGM
rm $DD_ROINSRPT

cobc -x ../cbl/$PGM.cbl -I $SYSLIB -o ../bin/$PGM

if [ "$?" -eq 0 ]; then
    ../bin/$PGM
else
    echo "Complier Return code not ZERO."
fi
