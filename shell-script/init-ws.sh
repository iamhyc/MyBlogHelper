#!/bin/bash
PWD=${0%/*}
cd $PWD

read -p "Your Github blog repo: " BLOG_OWNER

echo $BLOG_OWNER
echo "=== WARNING: Workspace Init ==="
read -n 1

./update-depends.sh
cd ..
git clone https://github.com/$BLOG_OWNER/$BLOG_OWNER.github.io github-pages
mkdir -p website

read -p "======== Finished ========"