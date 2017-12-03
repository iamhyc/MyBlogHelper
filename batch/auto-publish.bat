
@echo off

set p=
set p=%cd%

cd ..
call jekyll build
cd %p%
pause

call ./website-archieve.bat

cd scripts
call node auto-publish.js
cd %p%

cd ../github-pages
git add .
git commit -F ./.tmpfile
git push origin master
cd %p%
pause