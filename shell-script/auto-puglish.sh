#!/bin/bash
PWD=${0%/*}
cd $PWD

cd .. && jekyll build && cd $PWD
read -p "press ENTER for archieving..."

./website-archieve.sh

cd ../scripts && node auto-publish.js && cd $PWD

cd ../github-pages
git add .
git commit -F ./.tmpfile
git push origin master
cd $PWD

read -p "======== Finished ========"