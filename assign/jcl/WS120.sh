#!/bin/bash

# Compile and run WS120

# static parms
SYSLIB="../cpy"

# Program parms
PGM=WS120
export DD_QIINSCLAIM="../data/insclaim.dat.txt"
export DD_ROINSRPT="../spool/ws120-insclaim-report.rpt"

# clean up
rm ../bin/$PGM
rm $DD_ROINSRPT

cobc -x ../cbl/$PGM.cbl -I $SYSLIB -o ../bin/$PGM

if [ "$?" -eq 0 ]; then
    ../bin/$PGM
else
    echo "Complier Return code not ZERO."
fi
