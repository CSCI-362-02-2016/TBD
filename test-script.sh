#!/bin/bash
#  Compiles test-driver.c and hello.c */
cc hello.c -c -o "hello"
cc test-driver.c -o "test-driver"
#  Then calls test-driver binary */
./test-driver
