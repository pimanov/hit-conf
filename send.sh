#!/bin/sh

rm -r _site
 
jekyll build

for file in _site/*.html _site/2016/*.html
do
    echo html file charset modification: $file
    sed 's/charset=UTF-8/charset=cp-1251/g' $file > tim
    mv tim $file
done

for file in _site/*.* _site/2016/*.*
do
    echo recode $file
    iconv -f utf-8 -t windows-1251 -o tim $file
    mv tim $file
done

scp -P 23 -r _site/* pimanov@users.imec.msu.ru:/home/pimanov/hit-conf/www/

#rm -rf _site
