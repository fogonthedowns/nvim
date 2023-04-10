require('telescope').setup{
  -- truncate files paths
  path_display = {'shorten'},
  -- results file path truncation
  file_previewer = require('telescope.previewers').vim_buffer_cat.new,

  -- results buffer path truncation
  grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,

  -- results qflist path truncation
  qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,

  -- arrange search results horizontally
  layout_strategy = 'horizontal',
}
