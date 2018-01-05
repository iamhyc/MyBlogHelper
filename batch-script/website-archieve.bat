
@echo off
set p=
set p=%cd%

cd ../scripts
call node website-archieve.js
cd %p%
pause