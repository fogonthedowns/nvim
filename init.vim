lua require('plugins')
lua require('copilot')
set number
au BufWritePost *.go !gofmt -w %
