#!/bin/bash
#  Compiles test-driver.c and hello.c */
cc hello.c -c -o "hello"
cc concept-driver.c -o "concept-driver"
#  Then calls test-driver binary */
./concept-driver
