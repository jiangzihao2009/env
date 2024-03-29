#!/bin/sh
set -e
set -x

CUR_DIR=$(cd $(dirname $0); pwd)
if ! [ -e ~/.vim_runtime ];then
  mkdir -p ~/.vim_runtime
else
  rm -rf ~/.vim_runtime/*
fi

cp -rf $CUR_DIR/* ~/.vim_runtime
cd ~/.vim_runtime

echo '" DO NOT EDIT THIS FILE
set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim
try
  source ~/.vim_runtime/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed the Vim configuration successfully! Enjoy :-)"
