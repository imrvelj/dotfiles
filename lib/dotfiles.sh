#!/usr/bin/env bash

function dotfiles {
    # zsh
    if ! [ -e $HOME/.zshrc ]; then
        ln -s $PWD/zshrc $HOME/.zshrc
        echo "✅ ZSH config linked!"
    else
        echo "✅ ZSH config already installed!"
    fi

    # tmux
    if ! [ -e $HOME/.tmux.conf ]; then
        ln -s $PWD/tmux.conf $HOME/.tmux.conf
        echo "✅ TMUX config linked!"
    else
        echo "✅ TMUX config already installed!"
    fi

    # gitconfig
    if ! [ -e $HOME/.gitconfig ]; then
        ln -s $PWD/gitconfig $HOME/.gitconfig
        echo "✅ gitconfig config linked!"
    else
        echo "✅ gitconfig config already installed!"
    fi
}
