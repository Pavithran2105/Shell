#!/usr/bin/env bash

while true
do
url=$1


if curl --output /dev/null --silent --head --fail "$url"; then
  echo "URL exists: $url"
else
  echo "Url doesn't exist... Kindly check it" | sendmail pavithran.gurusamy@gmail.com
  break
fi
 sleep 2s
done
