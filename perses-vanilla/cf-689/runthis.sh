#!/bin/bash


cp testcommand.sh input/Issue689/com/example/
chmod +x input/Issue689/com/example/testcommand.sh

rm -rf output
cp -r input output

[ -e perses_deploy.jar ] || wget 'https://github.com/uw-pluverse/perses/releases/download/v2.0/perses_deploy.jar'

java -jar perses_deploy.jar --input-file input/Issue689/com/example/AbstractList.java --test-script input/Issue689/com/example/testcommand.sh --output-dir output/Issue689/com/example/
