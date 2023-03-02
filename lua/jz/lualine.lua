local status, lualine = pcall(require, 'lualine') -- statusline
if not status then
  return
end

lualine.setup {
  sections = {
    lualine_a = {
      { 'filename', file_status = true, path = 1, shorting_target = 40 },
    },
  },
}

