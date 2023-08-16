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
  }
--  open_on_setup = true
})

local function open_nvim_tree(data)

  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  if not directory then
    return
  end

  -- change to the directory
  vim.cmd.cd(data.file)

  -- open the tree
  require("nvim-tree.api").tree.open()
end

-- open on setup nvim-tree
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
