
cd ..
start jekyll build
cd _site
pause
git add .
git commit -m "Publish: %Date% %Time:~0,5%"
git push origin master