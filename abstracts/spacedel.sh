#!/bin/sh
for i in *
do
        k=`echo ${i}|sed s/' '//g`
        mv "${i}" ${k}
done
