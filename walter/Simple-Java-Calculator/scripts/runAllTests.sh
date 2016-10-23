#!/bin/bash

# See http://stackoverflow.com/questions/24112727/shell-relative-paths-based-on-file-location-instead-of-current-working-director
# Using classpath to find src files - see http://docs.oracle.com/javase/7/docs/technotes/tools/solaris/classpath.html
# For -classpath usage with java execution, See http://stackoverflow.com/questions/34413/why-am-i-getting-a-noclassdeffounderror-in-java

#### Begin script
## Initialize testReport.html

## Finding drivers using relative path and cd to main directory

parent_path=$( cd "$(dirname "${BASH_SOURCE}")" ; pwd -P )
cd "$parent_path"
cd ..

## Make these into .jar executables later so no need to javac?
javac -classpath "." testCasesExecutables/*.java

#### TestCase1

## Read testCase1.txt for command-line args

### Run testCase1 (Version 1, where command line args are params)
##cd testCasesExecutables
##java -cp "..:./" testCase1 square 2.0

### Run testCase1 (Version 2, where command line args is testCase.txt)
cd testCasesExecutables
java -cp "..:./" testCase1 ../testCases/testCase1.txt

### Run remaining testCases
java -cp "..:./" testCase1 ../testCases/testCase2.txt
java -cp "..:./" testCase1 ../testCases/testCase3.txt
java -cp "..:./" testCase1 ../testCases/testCase4.txt
java -cp "..:./" testCase1 ../testCases/testCase5.txt
java -cp "..:./" testCase1 ../testCases/testCase6.txt
java -cp "..:./" testCase1 ../testCases/testCase7.txt
java -cp "..:./" testCase1 ../testCases/testCase8.txt
java -cp "..:./" testCase1 ../testCases/testCase9.txt

## Send output to testReport.html
