#!/bin/bash

./export.sh

cp testcommand.sh input/Issue691/com/example/
chmod +x input/Issue691/com/example/testcommand.sh

rm -rf output
cp -r input output

[ -e perses_deploy.jar ] || wget 'https://github.com/uw-pluverse/perses/releases/download/v2.0/perses_deploy.jar'

java -jar perses_deploy.jar --input-file input/Issue691/com/example/Collections.java --test-script input/Issue691/com/example/testcommand.sh --output-dir output/Issue691/com/example/
