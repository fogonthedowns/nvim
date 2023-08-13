-- import nvim-tree plugin safely
--local setup, nvimtree = pcall(require, "nvim-tree")
--if not setup then
--  return
--end
nvimtree = nvimtree or require("nvim-tree")
-- disable netrw at the very start of your init.lua (strongly advised)
 vim.g.loaded_netrw = 1
 vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using default

-- OR setup with some options
nvimtree.setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  open_on_setup = true
})
