#!/bin/bash

# Compile and run WS162E

# static parms
SYSLIB="../cpy"

# Program parms
PGM=WS162E
export DD_QIINFILE="../data/hospin.dat.txt"
export DD_QIINSTYPE="../data/hinstype.dat.txt"
export DD_QOOUTFILE="../outdata/ws162e-outfile.dat.txt"
export DD_QOERRFILE="../outdata/ws162e-errfile.dat.txt"
export DD_RORPTFILE="../spool/ws162e-report.rpt"

# clean up
rm ../bin/$PGM
rm $DD_QOOUTFILE
rm $DD_QOERRFILE
rm $DD_RORPTFILE

cobc -x ../cbl/$PGM.cbl -I $SYSLIB -o ../bin/$PGM

if [ "$?" -eq 0 ]; then
    ../bin/$PGM
else
    echo "Complier Return code not ZERO."
fi
