#!/bin/bash

#check if defined cf is the right version (1.9.13)
#elsewise make a copy appear (divine wget)
[ -e output.txt ] && rm output.txt
export CHECKER_9_13=/Users/lain/repos/research/specimin-evaluation/checker-framework-1.9.13
export   CORRETTO_8=/Users/lain/repos/research/specimin-evaluation/amazon-corretto-8.jdk/Contents/Home/bin/java
#because perses incorrectly treats >>> and >> as individual greater than signs
#they need to be placed on the same line again for the checker to accept it

gsed -zi 's/>\n/>/g' Collections.java

$CORRETTO_8 -jar $CHECKER_9_13/checker/dist/checker.jar -processor formatter -AprintErrorStack Collections.java > output.txt 2>&1
grep "error: SourceChecker.typeProcess: unexpected Throwable (NullPointerException) while processing Collections.java" output.txt && echo "Found pattern." && exit 0
echo "Did not find pattern." && exit 1
