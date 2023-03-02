set encoding=utf8
let g:airline_powerline_fonts = 1
au BufWritePost *.go !gofmt -w %
