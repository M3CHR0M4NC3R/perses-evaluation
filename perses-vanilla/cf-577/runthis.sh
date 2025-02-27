#!/bin/bash


cp testcommand.sh input/issue-577/src/com/example/stream/
chmod +x input/issue-577/src/com/example/stream/testcommand.sh

rm -rf output
cp -r input output

[ -e perses_deploy.jar ] || wget 'https://github.com/uw-pluverse/perses/releases/download/v2.0/perses_deploy.jar'

java -Xmx8192m -jar perses_deploy.jar --input-file input/issue-577/src/com/example/stream/IncomparableTypes.java --test-script input/issue-577/src/com/example/stream/testcommand.sh --output-dir output/issue-577/src/com/example/stream
