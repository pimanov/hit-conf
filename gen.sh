#!/bin/sh
cd Abstracts
for name in *
do
  echo '<a href="Abstracts/'${name}'">'${name}'</a> <br />' >> ../abstracts.html
done
cd ..
