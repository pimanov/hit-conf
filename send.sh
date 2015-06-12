#!/bin/sh

jekyll build

for file in _site/*.html
do
    sed 's/charset=UTF-8/charset=cp-1251/g' $file > tim
    mv tim $file
done

for file in _site/*.*
do
    iconv -f utf-8 -t windows-1251 -o tim $file
    mv tim $file
done

#scp -P 23 -r _site/* pimanov@users.imec.msu.ru:/home/pimanov/hit-conf/www/

#rm -rf _site
