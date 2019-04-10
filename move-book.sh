#!/bin/bash

bookmark_file=~/.emacs.d/bookmarks

abs_dir=$(pwd)
rel_dir=$(dirs +0)

src=$1
src_dir="${src%\/*}"
src_file="${src##*\/}"
abs_src="$(cd $src_dir && pwd)/$src_file"
rel_src="$(cd $src_dir && dirs +0)/$src_file"

dst=$2
i=$((${#dst}-1))
dst_dir="${dst%\/*}"
if [ "${dst:$i:1}" = "/" ]
then
    dst_file=$src_file
else
    dst_file="${dst##*\/}"
fi
abs_dst="$(cd $dst_dir && pwd)/$dst_file"
rel_dst="$(cd $dst_dir && dirs +0)/$dst_file"

# update bookmarks
sed -i "s@$abs_src@$abs_dst@g" $bookmark_file
sed -i "s@$rel_src@$rel_dst@g" $bookmark_file

# move file
mv "$abs_src" "$abs_dst"
