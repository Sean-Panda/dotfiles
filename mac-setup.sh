#!/bin/bash

set -e

# Assumes Mac already has Xcode Command Line Tools and Homebrew

brew install neovim \
             stow \
             ripgrep \
             fd \
             tree-sitter \
             lua-language-server \
             llvm

brew install --cask font-jetbrains-mono-nerd-font

