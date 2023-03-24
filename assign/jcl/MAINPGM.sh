#!/bin/bash

# Compile and run MAINPGM

# static parms
SYSLIB="../cpy"
LOADLIB="../bin"

# Program parms
LLM1=SUB01
LLM2=SUB02
LLM3=SUB03
LLM4=SUB04
LLM5=SUB05
PGM=MAINPGM

# clean up
rm $LOADLIB/$PGM

# Compile and Run
cobc -x ../cbl/$PGM.cbl ../cbl/$LLM1.cbl ../cbl/$LLM2.cbl ../cbl/$LLM3.cbl ../cbl/$LLM4.cbl ../cbl/$LLM5.cbl  \
     -I $SYSLIB \
     -L $LOADLIB \
     -o $LOADLIB/$PGM

if [ "$?" -eq 0 ]; then
    ../bin/$PGM
else
    echo "Complier Return code not ZERO."
fi
