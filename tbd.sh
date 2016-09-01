#!/bin/bash
# This script will display a list of all the top-level contents of the current directory in your browser

# Send list of top-level directory contents of containing directory to new html file
# Sources: http://www.rapidtables.com/code/linux/ls.htm
# https://www.gnu.org/software/sed/manual/sed.html
# http://www.computerhope.com/unix/used.htm
ls -x -lh > "list.html" 

# Modify html file with <html> and other tags

# Open file in browser
# Sources: http://stackoverflow.com/questions/3124556/clean-way-to-launch-the-web-browser-from-shell-script
if which xdg-open > /dev/null
then
  xdg-open "list.html" 
elif which gnome-open > /dev/null
then
  gnome-open URL
fi

