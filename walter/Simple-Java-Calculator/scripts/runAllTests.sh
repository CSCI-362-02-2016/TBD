#!/bin/bash

# See http://stackoverflow.com/questions/24112727/shell-relative-paths-based-on-file-location-instead-of-current-working-director
# Using classpath to find src files - see http://docs.oracle.com/javase/7/docs/technotes/tools/solaris/classpath.html
# For -classpath usage with java execution, See http://stackoverflow.com/questions/34413/why-am-i-getting-a-noclassdeffounderror-in-java

#### Begin script

## Finding drivers using relative path and cd to main directory

parent_path=$( cd "$(dirname "${BASH_SOURCE}")" ; pwd -P )
cd "$parent_path"
cd ..

## Initialize testReport.html
printf "Team TBD Testing Report" > reports/report.html
sed -i '1 i<html>' reports/report.html
sed -i '$ a</html>' reports/report.html

## Make these into .jar executables later so no need to javac?
javac -classpath "." testCasesExecutables/*.java

#### Run testCases (Version 2, where command line args is testCase.txt)
### See http://stackoverflow.com/questions/10523415/bash-script-to-execute-command-on-all-files-in-directory
### Replace with stylesheet.css
cd testCasesExecutables
for file in ../testCases/*
do
	echo -e "<div style = 'background-color: grey'>" >> ../reports/report.html
	java -cp "..:./" testCaseMono "$file" >> ../reports/report.html
	echo -e "</div>" >> ../reports/report.html
done
sed -i '$ a</html>' ../reports/report.html
sed -i '1~2a<p>' ../reports/report.html
sed -i '2~1a</p>' ../reports/report.html

## Display report.html in browser
if which xdg-open > /dev/null
then
  xdg-open "../reports/report.html" 
elif which gnome-open > /dev/null
then
  gnome-open URL
fi
