#!/bin/bash
#compile command to be run before python script

directory="/Users/mjk76/tmp/4614_2"
expected="${directory}/expected_log.txt"
inputted="${directory}/build_log.txt"
test_json="${directory}/test_data.json"

cd "${directory}/output/cf-parser-error" && gradle build > "$inputted" 2>&1
result=$(python3 "${directory}/falsepositive.py" cf-4614 "$expected" "$inputted" "$test_json")
[ "$result" = "True" ] && echo "found pattern" && exit 0
echo "did not find pattern" && exit 1
