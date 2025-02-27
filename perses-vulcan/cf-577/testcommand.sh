#!/bin/bash

[ -e output.txt ] && rm output.txt
export CHECKER_9_11=/Users/lain/repos/research/specimin-evaluation/checker-framework-1.9.11
export   CORRETTO_8=/Users/lain/repos/research/specimin-evaluation/amazon-corretto-8.jdk/Contents/Home/bin/java


$CORRETTO_8 -jar $CHECKER_9_11/checker/dist/checker.jar -processor nullness -AprintErrorStack IncomparableTypes.java > output.txt 2>&1

grep "error: Incomparable types ( T_ARR extends @Initialized @Nullable Object, @Initialized @NonNull int @Initialized @NonNull \[])visitHistory = " output.txt && echo "Found pattern." && exit 0
echo "Did not find pattern." && exit 1
