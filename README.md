# Instructions to install Microsoft Language Server, gopls and ctags

Language Server Protocol [(LSP)](https://microsoft.github.io/language-server-protocol/).

## Requirements

This depends on [neovim](https://neovim.io/)

## TLDR

Clone this repo into `~/.config`. Clone `packer.nvim` and install `universal-ctags`.
Then comment line 7 in lua/plugins.lua. Open a neovim shell and run `:PackerUpdate`. Then remove comment on line 7.

## Setup

[Install Packer](https://github.com/wbthomason/packer.nvim)

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

[Install ctags](https://github.com/universal-ctags/ctags)

```
brew install --HEAD universal-ctags/universal-ctags/universal-ctags
```

[Install nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)

```
use 'neovim/nvim-lspconfig'
```

[Install LSP](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)

e.g. Google's LSP for golang:

```
require'lspconfig'.gopls.setup{}
```


Ensure `init.vim` requires plugins. Open a nvim shell:

```
:PackerUpdate
```

Verify LSP client install
```
:LspInfo
```
