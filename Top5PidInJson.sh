#!/bin/bash
ps -eo pid,etime,%cpu --sort=-%cpu | head -6 >> new3.txt

text1=/home/spurge/practiceShell/new3.txt
# cat "$text1" | sed 's/[ ]\+/ /g'

jq -n -R '
[
  inputs |
  split(" ") |
  { "pid": .[1], "Elapsed": .[2], "cpu": .[3] }
]' <<EOF  
$(cat "$text1" | sed 's/[ ]\+/ /g')
EOF