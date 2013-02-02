#!/bin/sh

g++ -g contour_find.cpp -o contour_find.out `pkg-config --cflags opencv` `pkg-config --libs opencv`
