set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" https://github.com/VundleVim/Vundle.vim
Plugin 'VundleVim/Vundle.vim'
" https://wakatime.com/
Plugin 'wakatime/vim-wakatime'
" https://github.com/bronson/vim-trailing-whitespace
Plugin 'bronson/vim-trailing-whitespace'
" https://github.com/fatih/vim-go
Plugin 'fatih/vim-go'
" https://github.com/plasticboy/vim-markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

call vundle#end()            " required

filetype plugin on

" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins

set expandtab
set tabstop=4
set shiftwidth=4

autocmd BufNewFile,BufReadPost *.yml set filetype=yaml
autocmd BufNewFile,BufReadPost *.json set filetype=json
autocmd BufNewFile,BufReadPost *.jbuilder set filetype=ruby
autocmd BufNewFile,BufReadPost *.vue set filetype=javascript

autocmd FileType html       setlocal ts=2 sw=2
autocmd FileType css        setlocal ts=2 sw=2
autocmd FileType yaml       setlocal ts=2 sw=2
autocmd FileType json       setlocal ts=2 sw=2
autocmd FileType javascript setlocal ts=2 sw=2
autocmd FileType ruby       setlocal ts=2 sw=2
autocmd FileType python     setlocal ts=4 sw=4
autocmd FileType php        setlocal ts=4 sw=4
autocmd FileType ts         setlocal ts=4 sw=4
autocmd FileType java       setlocal ts=4 sw=4
autocmd FileType groovy     setlocal ts=4 sw=4
autocmd FileType kotlin     setlocal ts=4 sw=4
autocmd FileType scala      setlocal ts=2 sw=4
autocmd FileType go         setlocal noexpandtab ts=4 sw=4

autocmd FileType * setlocal formatoptions-=cro

syntax enable

" WTF for MacBook Pro
imap jj <Esc>

" Go Programming Language
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1

" Markdown
let g:vim_markdown_folding_disabled = 1
