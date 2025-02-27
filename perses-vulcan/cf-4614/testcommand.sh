#!/bin/bash

export CHECKER_3_12="/Users/lain/repos/research/perses-bugs/cf-4614/checker-framework-3.12.0"

java -jar $CHECKER_3_12/checker/dist/checker.jar -processor nullness -AprintErrorStack Version.java > output.txt 2>&1

grep -F "required: Entry<@KeyFor(\"[error for expression: ()java.util.Map<java.lang.String,java.lang.String>.getAllVersionInformation(); error: Invalid '()java.util.Map<java.lang.String,java.lang.String>.getAllVersionInformation()' because the expression did not parse. Error message: Encountered unexpected token: \"java\" <IDENTIFIER>]\") String, String>" output.txt && echo "Found pattern." && exit 0
echo "Did not find pattern." && exit 1
