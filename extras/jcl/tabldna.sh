#!/bin/bash

# Compile and run tabldna

# static parms
SYSLIB="../cpy"

# Program parms
PGM=tabldna
export DD_QIEMPLOYEE="../data/employee.dat.txt"
export DD_QISTCOURS="../data/student-cours.dat.txt"

# clean up
rm ../bin/$PGM

cobc -x ../cbl/$PGM.cbl -I $SYSLIB -o ../bin/$PGM

if [ "$?" -eq 0 ]; then
    ../bin/$PGM
else
    echo "Complier Return code not ZERO."
fi
