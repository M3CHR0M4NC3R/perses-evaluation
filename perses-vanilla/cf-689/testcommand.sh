#!/bin/bash

[ -e output.txt ] && rm output.txt
export CHECKER_9_13=/Users/lain/repos/research/specimin-evaluation/checker-framework-1.9.13
export   CORRETTO_8=/Users/lain/repos/research/specimin-evaluation/amazon-corretto-8.jdk/Contents/Home/bin/java


$CORRETTO_8 -jar $CHECKER_9_13/checker/dist/checker.jar -processor guieffect -AprintErrorStack AbstractList.java > output.txt 2>&1
grep "error: SourceChecker.typeProcess: unexpected Throwable (AssertionError) while processing .*AbstractList.java" output.txt && echo "Found pattern." && exit 0
echo "Did not find pattern." && exit 1
