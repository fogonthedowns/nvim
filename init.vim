lua require('plugins')
lua require('copilot')
lua require('lsp')
lua require('colorscheme')
set number
au BufWritePost *.go !gofmt -w %
