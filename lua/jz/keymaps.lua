vim.g.mapleader = " " -- set leader key to space

local keymap = vim.keymap -- for convenience
local builtin = require('telescope.builtin')

keymap.set("n", "<leader>h", ":nohl<CR>") -- clear search highlights
keymap.set("n", "x", '"_x') -- delete without yanking
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current slpit window
--- note ctrl H, L to move horizontally between split windows
--- note ctrl J, K to move vertically between split windows


keymap.set("n", "<leader>+", "<C-a>") -- increment number under cursor
keymap.set("n", "<leader>-", "<C-x>") -- decrement number under cursor

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabnext<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabprevious<CR>") -- go to previous tab

keymap.set("n", "<leader>sm",":MaximizerToggle<CR>") -- toggle maximizer

keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer=0})
keymap.set("n", "ga", vim.lsp.buf.implementation, {buffer=0})
keymap.set("n", "<leader>df", vim.diagnostic.goto_next, {buffer=0})


keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>fg', builtin.live_grep, {})
keymap.set('n', '<leader>fb', builtin.buffers, {})
keymap.set('n', '<leader>fh', builtin.help_tags, {})
keymap.set('n', '<leader>gr', builtin.lsp_references, {})
keymap.set('n', '<leader>ds', builtin.lsp_document_symbols, {})
keymap.set('n', '<leader>ws', builtin.lsp_dynamic_workspace_symbols, {})

-- nvim-tree
keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')

-- dap  
keymap.set('n', '<leader>b', ':lua require"dap".toggle_breakpoint()<CR>')
keymap.set('n', '<leader>c', ':lua require"dap".continue()<CR>')
keymap.set('n', '<leader>s', ':lua require"dap".step_over()<CR>')
keymap.set('n', '<leader>i', ':lua require"dap".step_into()<CR>')
keymap.set('n', '<leader>o', ':lua require"dap".step_out()<CR>')
keymap.set('n', '<leader>dr', ':lua require"dap".repl.open()<CR>')
keymap.set('n', '<leader>B', ':lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>')
keymap.set('n', '<leader>lp', ':lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>')
keymap.set('n', '<leader>dr', ':lua require"dap".repl.open()<CR>')

-- dap-go
keymap.set('n', '<leader>dl', ':lua require"dap-go".debug_test()<CR>')

-- dap-ui
keymap.set('n', '<leader>ui', ':lua require"dapui".toggle()<CR>')
