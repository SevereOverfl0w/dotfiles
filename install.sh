#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=`pwd`/${0%/*}                    # dotfiles directory
files="vimrc vim xinitrc"    # list of files/folders to symlink in homedir
conffiles="termite"

##########

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

for file in $conffiles; do
    echo "Creating symlink to $file in ~/.config/$file directory."
    ln -s $dir/config/$file ~/.config/$file
done
