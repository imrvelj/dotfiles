#!/bin/bash

dir=/storage/dev/projects/dotfiles
olddir=/home/rejd/dotfiles_old
files="zshrc Xresources tmux.conf gitconfig"

echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

echo "Changing to the $dir directory"
cd $dir
echo "...done"

for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file $olddir
    echo "Creating symlink to $file in home directory."
    ln -sf $dir/$file ~/.$file
done
