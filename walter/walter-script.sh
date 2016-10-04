#!/bin/bash
#  Compiles walter-driver.c and buddyiconf.c */
#  glib header files were tricky: http://stackoverflow.com/questions/1146010/why-cant-i-build-a-hello-world-for-glib and https://developer.gnome.org/glib/stable/glib-compiling.html
# Also this: http://stackoverflow.com/questions/29998485/in-c-programming-what-is-undefined-referenceerror-when-compiling

cc -c pidgin-eclipse/libpurple/buddyicon.c `pkg-config --cflags --libs glib-2.0` -o "walter-driver" 

# Concept for compiling all dependencies
# Should we instead just call the configure script and make the whole thing and run off that?
cc -c hello.c -o "hello.o"
cc -c dependency.c -o "dependency.o"
cc concept-driver.c hello.o dependency.o -o "concept-driver"

#  Then calls test-driver binary */
# ./pidgin-eclipse/walter-driver
