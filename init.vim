lua require('plugins')
set number
au BufWritePost *.go !gofmt -w %
