-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

-- Prior to installation (opening nvim and running ::PackerUpdate) comment the line below. Then Uncomment.
require'lspconfig'.gopls.setup{} -- gopls language server (LSP) https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#gopls

return require('packer').startup(function()
  -- to install package. Import library with use ''. Open nvim and enter :PackerUpdate
  use 'wbthomason/packer.nvim' -- Package manager
  use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client
  use 'ludovicchabant/vim-gutentags' -- cTags
end)

