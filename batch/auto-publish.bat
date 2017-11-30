
cd ..
call jekyll build
cd github-pages
pause
git add .
git commit -m "Publish: %Date% %Time:~0,5%"
git push origin master