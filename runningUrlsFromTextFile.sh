#!/usr/bin/env bash


# from db
dbUrls=`sudo -u postgres -H -- psql -d websites -c" Select url FROM websites.webpage"`;


for url in $dbUrls
do
        echo "$url"
        xdg-open $url
done

# using xargs
url=/home/spurge/practiceShell/read5urls/url.txt
cat $url | xargs -I % xdg-open %

# using for and while
#!/bin/bash

url=/home/spurge/practiceShell/read5urls/url.txt

while IFS= read -r line
do
  echo "$line"
  xdg-open $line
done < "$url"

# 
#! bin/bash

urlFile="url.txt"

eachLine=$(cat $urlFile)

for line in $eachLine
do
        echo "$line"
        xdg-open $line
done