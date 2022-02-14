#!/bin/sh
#
# This file is licensed under 0BSD.
#

TESTFILE=$(basename ${1})

${SCRIPTSE} < ${TESTSDIR}/${TESTFILE} | ${SE} > /dev/tty
${DIFF} ${TESTSDIR}/${TESTFILE}.exp ${TESTFILE}.out
