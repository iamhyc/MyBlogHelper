
@echo off
set p=
set p=%cd%

cd ../scripts && npm install && cd %p%

cd .. && bundle update && cd batch

pause