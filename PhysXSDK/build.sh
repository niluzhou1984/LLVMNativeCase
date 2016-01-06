#!/bin/sh


basepath=$(cd `dirname $0`;pwd)

echo "${basepath}/Source/compiler/cygwin32_llvm"
cd ${basepath}/Source/compiler/cygwin32_llvm
make clean
make release