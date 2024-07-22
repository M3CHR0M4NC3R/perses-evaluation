## Hey hey people
to get this to run, put the ```perses_deploy.jar``` in this folder and run
```runthis.sh```
The first script defines a variable for the directory it's in, then calls
perses. Perses demands that the sh file be in the same directory as the java
source file, ```falsepositive.sh``` compiles the output from the given
gradle.build, then runs the same test from the specimin evaluation on the
output build file and the expected build file.

Perses however, **HATES** my bash script! It runs a sanity check on it and kills
itself before doing any reduction.

```cd "${directory}/output/cf-parser-error" && gradle build > "$inputted" 2>&1```
This is the build command, does the way I call gradle matter?
