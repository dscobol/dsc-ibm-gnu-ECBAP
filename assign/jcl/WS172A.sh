#!/bin/bash

# Compile and run WS172A

# static parms
SYSLIB="../cpy"

# Program parms
PGM=WS172A
export DD_QISTCOURS="../data/student-cours.dat.txt"
export DD_QOERRFILE="../outdata/ws172a-student-error.dat.txt"
export DD_RORPTFILE="../spool/ws172a-student-grade-report.rpt"

# clean up
rm ../bin/$PGM
rm $DD_QOERRFILE
rm $DD_RORPTFILE

cobc -x ../cbl/$PGM.cbl -I $SYSLIB -o ../bin/$PGM

if [ "$?" -eq 0 ]; then
    ../bin/$PGM
else
    echo "Complier Return code not ZERO."
fi
