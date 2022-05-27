#!/usr/bin/env bash



touch -c "/home/spurge/myWorkSpace/shellscript/post"/*

grep -Rw "dir*" .

tar cvf "output.tar.xz" *.sh

scp "output.tar.xz" "ubuntu@192.168.0.152:/home/ubuntu/testing"

ssh "ubuntu@192.168.0.152" "cd testing; tar -xf output.tar.xz"



