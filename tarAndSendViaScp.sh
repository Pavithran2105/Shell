#!/usr/bin/env bash


gettingOutput()
{
dir=$1
touch -c "$dir"/*


wordFind=$2
grep  --exclude=output.sh -Rw "$wordFind*" .

tarFile=$3
tar cvf "$tarFile" *.sh

scpRemote=$4
scp "$tarFile" "$scpRemote"

filePath=$6


unzippingTarFile=$5
ssh "$unzippingTarFile" "$filePath"


}

# gettingOutput '/home/provilty/workspace/sys-program/task/26_nov_task/task/' 'echo' 'output.tar.xz' 'ubuntu@192.168.0.152:/home/ubuntu/testing' 'ubuntu@192.168.0.152' 'cd testing; tar -xf output.tar.xz'