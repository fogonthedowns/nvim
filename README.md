# Instructions to install Microsoft Language Server, gopls and ctags

Language Server Protocol [(LSP)](https://microsoft.github.io/language-server-protocol/).

## Requirements

This depends on [neovim](https://neovim.io/)

## TLDR

Clone this repo into `~/.config`. Clone `packer.nvim` and install `universal-ctags`. Next `brew install fzf`.
Then comment line 7 in lua/plugins.lua. Open a neovim shell and run `:PackerUpdate`. Then remove comment on line 7.

## Setup

[Install Homebrew](https://brew.sh)
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

[Install oh-my-zsh](https://ohmyz.sh)
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

[Install ack](https://beyondgrep.com/install/)
```
brew install ack
```

[Install fzf](https://github.com/junegunn/fzf)
```
brew install fzf
```

[Install Fonts]()
```
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font --cask
```
note - Fonts are required to display icons for IDE. configure Fonts with iTerm2. (Settings>Profile>Text]


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

[Install node.js](https://nodejs.org/en/)

```
brew install node
```

[Install LSP](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)

e.g. Google's LSP for golang:

```
require'lspconfig'.gopls.setup{}
```

updating gopls:
```
gopls version
which gopls
GO111MODULE=on go install golang.org/x/tools/gopls@latest
```
Ensure `init.vim` requires plugins. Open a nvim shell:

```
:PackerUpdate
```

Verify LSP client install
```
:LspInfo
```

Copilot install
```
:Copilot setup
:Copilot enable
```

PowerLevel10k theme:

[ZSH Theme](https://github.com/romkatv/powerlevel10k#oh-my-zsh)
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc.
```

[ZSH Syntax Highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
```

Then add zsh-syntax-highlighting to plugins of .zshrc


Code Complexity Tools
[complexity](https://github.com/thoughtbot/complexity)
```
brew tap thoughtbot/formulae
brew install complexity
complexity --ignore testdata| sort -n --reverse | head -n 20
```

[gocognit](https://github.com/uudashr/gocognit)
```
go install github.com/uudashr/gocognit/cmd/gocognit@latest
gocognit . |head -n 20
```


[jq](https://stedolan.github.io/jq/)
```
brew install jq
```

[dlv]()
```
brew install dlv
dlv version
1.20.1
```

[markdown-preview](https://github.com/iamcco/markdown-preview.nvim)
```
cd ~/.local/share/nvim/site/pack/packer/start/
git clone https://github.com/iamcco/markdown-preview.nvim.git
cd markdown-preview.nvim
yarn install
yarn build
```


[pyright](https://github.com/neovim/nvim-lspconfig)
```
npm i -g pyright
require'lspconfig'.pyright.setup{}
```

[[yamlls]]()
```
brew install yarn
yarn add yaml-language-server@latest
npm i -g yaml-language-server@latest
```

## Problems

```
brew reinstall neovim
```
