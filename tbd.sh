#!/bin/bash
# This script will display a list of all the top-level contents of the current directory in your browser

# Send list of top-level directory contents of containing directory to new html file
# Sources: http://www.rapidtables.com/code/linux/ls.htm
ls -x -lh > "list.html" 

# Modify html file with <html> and other tags
# https://www.digitalocean.com/community/tutorials/the-basics-of-using-the-sed-stream-editor-to-manipulate-text-in-linux
sed -i "1 iListing contents of $PWD" list.html
sed -i '1 i<html>' list.html
sed -i '$ a</html>' list.html
sed -i '1~2a<p>' list.html
sed -i '2~1a</p>' list.html

# Open file in browser
# Sources: http://stackoverflow.com/questions/3124556/clean-way-to-launch-the-web-browser-from-shell-script
if which xdg-open > /dev/null
then
  xdg-open "list.html" 
elif which gnome-open > /dev/null
then
  gnome-open URL
fi

