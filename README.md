# dotfiles

My personal dotfiles (kinda mid but workin on it)

## Contents

| Directory | Description |
| --------- | ----------- |
| `nvim`    | Neovim config |
| `kitty`   | Kitty terminal config |

## Setup

On a Mac (w/ Xcode Command Line Tools and Homebrew installed), use 
`mac-setup.sh`, which will install the packages needed.

On Ubuntu/WSL2, use `wsl-setup.sh` instead (installs Neovim + tooling;
the terminal and font are handled on the Windows side).

Symlink a package into place with Stow. Each package mirrors the layout of
`$HOME`, so run Stow from the repo root:

```sh
cd ~/.dotfiles
stow nvim
stow kitty
```

