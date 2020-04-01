#!/usr/bin/env bash

CDIR="$(cd "$(dirname "$0")" && pwd)"
build_dir=$CDIR/build

while getopts A:K:q option
do
  case "${option}"
  in
    q) QUIET=1;;
    A) ARCH=${OPTARG};;
    K) KERNEL=${OPTARG};;
  esac
done

rm -rf $build_dir
mkdir -p $build_dir

for f in pluginrc.sh
do
    cp $CDIR/$f $build_dir/
done

cd $build_dir
url='git://github.com/ohmybash/oh-my-bash.git'
home_dir=oh-my-bash

[ $QUIET ] && arg_q='-q' || arg_q=''
if [ -x "$(command -v git)" ]; then
  git clone $arg_q --depth=1 $url $home_dir
else
  echo You should install git: https://duckduckgo.com/?q=install+git+on+linux
fi
