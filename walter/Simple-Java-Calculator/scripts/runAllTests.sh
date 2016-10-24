#!/bin/bash

# See http://stackoverflow.com/questions/24112727/shell-relative-paths-based-on-file-location-instead-of-current-working-director
# More sed info beyond initial script: http://unix.stackexchange.com/questions/121161/how-to-insert-text-after-a-certain-string-in-a-file
# Adding datestamp http://stackoverflow.com/questions/8228047/adding-timestamp-to-a-filename-with-mv-in-bash
# Using classpath to find src files - see http://docs.oracle.com/javase/7/docs/technotes/tools/solaris/classpath.html
# For -classpath usage with java execution, See http://stackoverflow.com/questions/34413/why-am-i-getting-a-noclassdeffounderror-in-java

#### Begin script

## Finding drivers using relative path and cd to main directory

parent_path=$( cd "$(dirname "${BASH_SOURCE}")" ; pwd -P )
cd "$parent_path"
cd ..

## Initialize testReport.html
DATE=$(date +"-%Y-%m-%d")
printf "<link rel='stylesheet' type='text/css' href='../docs/style.css'>" > reports/report$DATE.html
sed -i '1 i<head>' reports/report$DATE.html
sed -i '3 i</head>' reports/report$DATE.html
printf "Team TBD Testing Report\n" >> reports/report$DATE.html
DATE2=$(date +"%m-%d-%Y")
printf "Generated by $USER on $DATE2" >> reports/report$DATE.html
sed -i '5 i<html>' reports/report$DATE.html
sed -i '$ a</html>' reports/report$DATE.html


## Make these into .jar executables later so no need to javac?
javac -classpath "." testCasesExecutables/*.java

#### Run testCases (Version 2, where command line args is testCase.txt)
### See http://stackoverflow.com/questions/10523415/bash-script-to-execute-command-on-all-files-in-directory
### Replace with stylesheet.css
cd testCasesExecutables
for file in ../testCases/*
do
	echo -e "<div class="container">" >> ../reports/report$DATE.html
	java -cp "..:./" testCaseMono "$file" >> ../reports/report$DATE.html
	echo -e "</div>" >> ../reports/report$DATE.html
done
sed -i '$ a</html>' ../reports/report$DATE.html
sed -i '1~2a<p>' ../reports/report$DATE.html
sed -i '2~1a</p>' ../reports/report$DATE.html

## Display report.html in browser
if which xdg-open > /dev/null
then
  xdg-open "../reports/report$DATE.html" 
elif which gnome-open > /dev/null
then
  gnome-open URL
fi
