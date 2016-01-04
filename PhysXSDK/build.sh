#!/bin/sh


basepath=$(cd `dirname $0`;pwd)

echo "${basepath}/Source/compiler/crossbridge"
cd ${basepath}/Source/compiler/crossbridge
make clean
make release