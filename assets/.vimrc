filetype plugin indent off
set tabstop=4
set shiftwidth=4
set expandtab
set vb t_vb=
syntax on
colorscheme default
autocmd FileType make setlocal ts=4 sts=4 sw=4 noexpandtab
autocmd FileType c setlocal ts=4 sts=4 sw=4 expandtab
autocmd FileType cpp setlocal ts=4 sts=4 sw=4 expandtab
autocmd FileType html setlocal ts=4 sts=4 sw=4 expandtab
autocmd FileType java setlocal ts=4 sts=4 sw=4 expandtab
autocmd FileType javascript setlocal ts=4 sts=4 sw=4 expandtab
autocmd FileType json setlocal ts=4 sts=4 sw=4 expandtab
autocmd FileType php setlocal ts=4 sts=4 sw=4 expandtab
autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType make setlocal ts=2 sts=2 sw=2 noexpandtab
autocmd FileType c,cpp,html,java,javascript,json,php,make,python,yaml autocmd BufWritePre <buffer> %s/\s\+$//e