-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

-- Prior to installation (opening nvim and running ::PackerUpdate) comment the line below. Then Uncomment.
require'lspconfig'.gopls.setup{} -- gopls language server (LSP) https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#gopls

return require('packer').startup(function()
  -- INSTALL New PACKAGES:
  -- To install new pacakges, find the github package installation command something usually equivalent to
  -- Plug 'sebdah/vim-delve'
  -- Since plug is the most commnon, you will usually see that listed first. you are not using plugs replace with: 
  -- use 'sebdah/vim-delve'
  -- Finally, to install package. First Open nvim Then enter :PackerUpdate
  use 'wbthomason/packer.nvim' -- Package manager
  use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client
  use 'ludovicchabant/vim-gutentags' -- cTags
  use 'sebdah/vim-delve' -- Golang debugger for neovim, requires github.com/go-delve/delve (installed via go)
  use { 'junegunn/fzf', run = ":call fzf#install()" }
  use { 'junegunn/fzf.vim' }
  use { 'github/copilot.vim' }
end)

