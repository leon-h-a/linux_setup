set nocompatible
filetype plugin on
syntax on
set laststatus=2
set statusline=%!getcwd()
set colorcolumn=80

" Custom commands
iabbrev dot <c-v>u00b7

" Personal shortcuts
nmap qwer <leader>e gg O <ESC>:put=strftime('%A - %d.%m.%Y')<CR><leader>e$a<CR>
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
Plugin 'davidhalter/jedi-vim'
Plugin 'preservim/nerdtree'
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'ycm-core/YouCompleteMe'
"Plugin 'lervag/vimtex'
"Plugin 'aserebryakov/vim-todo-lists'
call vundle#end()

filetype plugin indent on
" Vimtex settings
let g:vimtex_view_general_viewer = 'sumatraPDF'
let g:vimtex_view_general_options = '-reuse-instance @pdf'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'

" Run VimtexComplete as soon as *.tex file is opened
autocmd VimEnter *.tex :VimtexCompile
autocmd VimEnter * NERDTree | wincmd p

" Vim To-Do settings
let g:VimTodoListsMoveItems = 0
