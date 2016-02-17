#!/bin/bash

## remove remark specific markdown (slides separator, comments, slides information and todo comments)
sed '/--/d' index.md |  sed '/template:/d' |sed '/class:/d' |sed '/name:/d' | sed '/???/d' | sed '/_todo_/d' | sed -e 's/^\*//' > readme.md

## build 
pandoc -o template-presentation.pdf readme.md

