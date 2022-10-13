#!/bin/bash
# https://discourse.gohugo.io/t/delete-public-folder-before-every-build/2468/5
# https://blog.bramp.net/post/2015/08/01/hugo-makefile/


echo 'deploying'

# commit source and push to github
git add -A
git commit -m 'update'
git push origin source

# build public folder
hugo

# change to public directory
cd public

# commit master and push to github
git add -A
git commit -m 'update'
git push origin master

echo 'deployment complete'