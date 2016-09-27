#!/bin/bash
#  Compiles walter-driver.c and buddyiconf.c */
#  glib header files were tricky: http://stackoverflow.com/questions/1146010/why-cant-i-build-a-hello-world-for-glib and https://developer.gnome.org/glib/stable/glib-compiling.html

# http://stackoverflow.com/questions/29998485/in-c-programming-what-is-undefined-referenceerror-when-compiling

cc pidgin-eclipse/libpurple/buddyicon.c pidgin-eclipse/walter-driver.c `pkg-config --cflags --libs glib-2.0` -o "walter-driver" 
# cc pidgin-eclipse/walter-driver.c `pkg-config --cflags --libs glib-2.0` -o "walter-driver"


#  Then calls test-driver binary */
./pidgin-eclipse/walter-driver
