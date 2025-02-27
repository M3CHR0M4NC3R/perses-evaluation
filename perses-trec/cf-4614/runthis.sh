#!/bin/bash



[ -e perses_deploy.jar ] || wget 'https://github.com/uw-pluverse/perses/releases/download/v2.0/perses_deploy.jar'
[ -e checker-framework-3.12.0 ] || (wget 'https://github.com/typetools/checker-framework/releases/download/checker-framework-3.12.0/checker-framework-3.12.0.zip'; unzip checker-framework-3.12.0.zip)

CHECKER_3_12="$(pwd)/checker-framework-3.12.0"
echo "$CHECKER_3_12"
gsed -i 's|path to checker framework|'$CHECKER_3_12'|g' testcommand.sh

cp testcommand.sh input/src/main/java/net/mtu/eggplant/checker/parser_error
chmod +x input/src/main/java/net/mtu/eggplant/checker/parser_error/testcommand.sh

rm -rf output
cp -r input output

java -jar perses_deploy.jar --query-caching false --enable-trec true --input-file input/src/main/java/net/mtu/eggplant/checker/parser_error/Version.java --test-script input/src/main/java/net/mtu/eggplant/checker/parser_error/testcommand.sh --output-dir output/src/main/java/net/mtu/eggplant/checker/parser_error
