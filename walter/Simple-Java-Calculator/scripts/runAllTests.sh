#!/bin/bash

# See http://stackoverflow.com/questions/24112727/shell-relative-paths-based-on-file-location-instead-of-current-working-director
# Using classpath to find src files - see http://docs.oracle.com/javase/7/docs/technotes/tools/solaris/classpath.html
# For -classpath usage with java execution, See http://stackoverflow.com/questions/34413/why-am-i-getting-a-noclassdeffounderror-in-java

#### Begin script
## Initialize testReport.html

## Finding drivers using relative path and cd to driver directory

parent_path=$( cd "$(dirname "${BASH_SOURCE}")" ; pwd -P )
cd "$parent_path"
cd ../testCasesExecutables

## Make these into .jar executables later so no need to javac?

javac -classpath "../" testCase1.java

#### TestCase1

## Read testCase1.txt for command-line args

## Run testCase1

java -classpath "../:." testCase1 2.0

## Send output to testReport.html
