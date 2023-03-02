-- import lspconfig plugin safely
local lspconfig_status, lspconfig = pcall(require, "lspconfig")
--if not lspconfig_status then
--  return
--end

-- enable keybindings for available completion items
-- used to enable autocompletion (assign to every lsp server config)
local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')
--if not cp_nvim_lsp_status then
--  return
--end

local keymap = vim.keymap -- for conciseness

-- enable keybinds for available lsp server
local on_attach = function(client, bufnr)
  -- keybind options
  local opts = { noremap = true, silent = true, buffer = bufnr }
  
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  -- set keybinds
  keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- got to declaration
  keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions
  keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection
  keymap.set("n", "<leader>rn", ":IncRename ", opts) -- smart rename
  keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file
  keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line
  keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer
  keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer
 -- keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor
end
-- enable keybindings for available completion items
-- used to enable autocompletion (assign to every lsp server config)
local capabilities = require("cmp_nvim_lsp").default_capabilities()
-- Prior to installation (opening nvim and running ::PackerUpdate) comment the line below. Then Uncomment.

lspconfig['gopls'].setup({
  capabilities = capabilities,
    on_attach = on_attach
    })

