#!/bin/bash
git checkout master
git push origin master 
git checkout hg-pages
git merge master
git push origin gh-pages
git checkout master
