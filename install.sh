#!/bin/bash
#This file is to create symlink for dotfiles in home directory
dir=~/dotfiles
old_dir=~/old_dotfiles
echo "creating $old_dir folder for backup"
mkdir -p $old_dir
echo "......done"
files=".bashrc .bash_profile .vimrc .config/sublime-text-3/Packages/User/Preferences.sublime-settings"

echo "changing to $dir folder"
cd $dir
echo ".......done"

#move any dotfile to backup and dotfiles folder
for file in $files
	do
		echo "moving $file in $old_dir"
		mv ~/$file $old_dir
		echo "creating symlink"
		ln -s $dir/$file ~/$file
	done



