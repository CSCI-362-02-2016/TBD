#!/bin/bash
#  Compiles nicholas-driver.c */
g++ nicholas-driver.c `pkg-config --cflags --libs glib-2.0` -o "nicholas-driver"
#  Then calls nicholas-driver binary */
./nicholas-driver
