set nocompatible
filetype plugin on
syntax on

set colorcolumn=80

" Custom commands
iabbrev dot <c-v>u00b7

" Personal shortcuts
nmap qwer <leader>ekkO<ESC>:put=strftime('%A - %d.%m.%Y')<CR><leader>e$a<CR>
autocmd FileType tex inoremap tt <Esc>/<++><Enter>"_c4l

" Vim settings
set number
set relativenumber
"
" Vundle settings
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Plugin 'ycm-core/YouCompleteMe'
Plugin 'lervag/vimtex'
Plugin 'aserebryakov/vim-todo-lists'
call vundle#end()

filetype plugin indent on
" Vimtex settings
let g:vimtex_view_general_viewer = 'sumatraPDF'
let g:vimtex_view_general_options = '-reuse-instance @pdf'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'

" Run VimtexComplete as soon as *.tex file is opened
autocmd VimEnter *.tex :VimtexCompile

" Vim To-Do settings
let g:VimTodoListsMoveItems = 0
