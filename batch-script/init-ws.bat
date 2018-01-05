
@echo off

set BLOG_OWNER=
set /p BLOG_OWNER = Your Github blog repo: 

@echo on

@echo %BLOG_OWNER%
@echo === WARNING: Workspace Init ===
@pause

@echo off

call update-depends.bat
cd ..
start git clone https://github.com/%BLOG_OWNER%/%BLOG_OWNER%.github.io github-pages
mkdir website

@echo on
@echo   ======== Finished ========
@pause