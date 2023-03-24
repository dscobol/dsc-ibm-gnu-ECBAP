#!/bin/bash

# Compile and run STRING1

# static parms
SYSLIB="../cpy"

# Program parms
PGM=STRING1

# clean up
rm ../bin/$PGM

cobc -x ../cbl/$PGM.cbl -I $SYSLIB -o ../bin/$PGM

if [ "$?" -eq 0 ]; then
    ../bin/$PGM
else
    echo "Complier Return code not ZERO."
fi
