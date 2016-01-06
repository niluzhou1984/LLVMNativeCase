#!/bin/sh
basepath=$(cd `dirname $0`;pwd)
echo ${basepath};
cd ${basepath}
make all