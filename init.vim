lua require('plugins')
lua require('copilot')
lua require('lsp')
set number
au BufWritePost *.go !gofmt -w %
