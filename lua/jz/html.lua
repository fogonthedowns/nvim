require'lspconfig'.html.setup{
  filetypes = {'html'},
  init_options = {
    configurationSection = {'html', 'css', 'javascript'},
    embeddedLanguages = {
      css = true,
      javascript = true
    }
  },
  settings = {
    html = {
      format = {
        enable = true
      }
    }
  }
}
