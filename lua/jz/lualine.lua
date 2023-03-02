local status, lualine = pcall(require, 'lualine') -- statusline
if not status then
  return
end

lualine.setup({})

