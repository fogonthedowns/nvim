-- file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
vim.g.mapleader = "\\" -- set leader key to backslash
-- Prior to installation (opening nvim and running ::PackerUpdate) comment the line below. Then Uncomment.
require'lspconfig'.gopls.setup{ -- gopls language server (LSP) https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#gopls
  -- cmd = {"gopls", "-logfile=/tmp/gopls.log", "-mode=stdio", "-remote=auto", "-rpc.trace", "-debug=rpctrace"}, -- for debugging
  on_attach = function()
end
}
-- connect to server

return require('packer').startup(function()
  -- INSTALL New PACKAGES:
  -- To install new pacakges, find the github package installation command something usually equivalent to
  -- Plug 'sebdah/vim-delve'
  -- Since plug is the most commnon, you will usually see that listed first. you are not using plugs replace with: 
  -- use 'sebdah/vim-delve'
  -- Finally, to install package. First Open nvim Then enter :PackerUpdate
  use { 'github/copilot.vim' }
  use 'wbthomason/packer.nvim' -- Package manager
  use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client
  use 'ludovicchabant/vim-gutentags' -- cTags
  use 'sebdah/vim-delve' -- Golang debugger for neovim, requires github.com/go-delve/delve (installed via go)
  use { 'junegunn/fzf', run = ":call fzf#install()" }
  use { 'junegunn/fzf.vim' }
  use("nvim-lualine/lualine.nvim") -- statusline
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.1', requires = { {'nvim-lua/plenary.nvim'} }}  -- Fuzzy finder
  use "folke/tokyonight.nvim" -- Colorschemes
  use "lunarvim/darkplus.nvim"

  use("christoomey/vim-tmux-navigator") -- Tmux navigation
  use("szw/vim-maximizer") -- Maximize window

  use("tpope/vim-surround") -- Surround text objects
  use("vim-scripts/ReplaceWithRegister") -- Replace with register ys w "   ds "   cs "'

  use("nvim-tree/nvim-tree.lua")  -- File explorer

  use("numToStr/Comment.nvim") -- Commenting

  use { -- https://github.com/folke/trouble.nvim
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
end)
