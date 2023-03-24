#!/bin/bash

# Compile and run WS81C

# static parms
SYSLIB="../cpy"

# Program parms
PGM=WS81D
export DD_QIRFPIN="../data/favrfp.dat.txt"
export DD_QOPROP="../outdata/ws81d-report.dat.txt"
export DD_ROPROP="../spool/ws81d-report.rpt"

# clean up
rm ../bin/$PGM
rm $DD_QOPROP
rm $DD_ROPROP

cobc -x ../cbl/$PGM.cbl -I $SYSLIB -o ../bin/$PGM

if [ "$?" -eq 0 ]; then
    ../bin/$PGM
else
    echo "Complier Return code not ZERO."
fi
