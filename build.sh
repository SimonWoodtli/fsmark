#!/bin/sh
set -uex pipefail

apt-get update -y && apt-get install -y curl build-essential
cd /tmp
curl -LJO https://sourceforge.net/projects/fsmark/files/latest/download
## no way of getting any metadata from sourceforge directly so find it is ...
tarball="$(find . -name "fs_mark*" 2>/dev/null)"
## I hope the maintainer does not change to another compression :o
name="${tarball%.*}"
name="${name%.*}"
tar zxvf "$tarball"
cd "/tmp/$name"
make
mv "/tmp/$name/fs_mark" /bin/fs_mark
