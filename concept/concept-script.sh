#!/bin/bash
#  Compiles test-driver.c and hello.c */
cc -c hello.c -o "hello.o"
cc -c dependency.c -o "dependency.o"
cc concept-driver.c hello.o dependency.o -o "concept-driver"

#  Then calls test-driver binary */
./concept-driver
