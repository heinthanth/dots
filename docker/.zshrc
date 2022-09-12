#!/usr/bin/env zsh

[[ -e $HOME/.local/share/chezmoi ]] || { sh -c "$(curl -fsLS https://chezmoi.io/get)" -- init --apply heinthanth/dots; source $HOME/.zshrc; clear; source $HOME/.zshrc }
