#!/bin/bash

set -e

# Assumes Mac already has Xcode Command Line Tools and Homebrew

brew install neovim \
             stow \
             ripgrep \
             fd \
             tree-sitter \
             lua-language-server \
             llvm \
             hashicorp/tap/terraform-ls

npm install -g yaml-language-server

brew install dotnet
dotnet tool install -g csharp-ls

brew install --cask font-jetbrains-mono-nerd-font

