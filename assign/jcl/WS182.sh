#!/bin/bash

# Compile and run WS182

# static parms
SYSLIB="../cpy"

# Program parms
PGM=WS182
export DD_QIACCTREC="../data/acctrec.sort.dat.txt"
export DD_RORPTFILE="../spool/ws182-pres-cb1-report.rpt"

# clean up
rm ../bin/$PGM
rm $DD_RORPTFILE

cobc -x ../cbl/$PGM.cbl -I $SYSLIB -o ../bin/$PGM

if [ "$?" -eq 0 ]; then
    ../bin/$PGM
else
    echo "Complier Return code not ZERO."
fi
