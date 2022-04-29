## Setup

[Install Packer] (https://github.com/wbthomason/packer.nvim)

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

[Install ctags](https://github.com/universal-ctags/ctags)

```
brew install --HEAD universal-ctags/universal-ctags/universal-ctags
```

Ensure init.vim requires plugins. Open a nvim:

```
:PackerUpdate
```

Verify LSP client install
```
:LspInfo
```
