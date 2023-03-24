#!/bin/bash

# Compile and run HOSPEDIT

# static parms
SYSLIB="../cpy"

# Program parms
PGM=HOSPEDIT
# Input Files
export DD_QIHOSPIN="../data/hospin.dat.txt"
export DD_QIINSTYPE="../data/hinstype.dat.txt"

# Reports
export DD_RORPTFILE="../spool/hrptfile.dat.txt"

# Output Files
export DD_QOHOSPOUT="../outdata/houtfile.dat.txt"
export DD_QOERRFILE="../outdata/herrfile.dat.txt"

# clean up
rm ../bin/$PGM
rm $DD_RORPTFILE
rm $DD_QOHOSPOUT
rm $DD_QOERRFILE

cobc -x ../cbl/$PGM.cbl -I $SYSLIB -o ../bin/$PGM

if [ "$?" -eq 0 ]; then
    ../bin/$PGM
else
    echo "Complier Return code not ZERO."
fi
