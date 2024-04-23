set nocompatible
filetype plugin on
syntax on
set laststatus=2
set statusline=%!getcwd()
set colorcolumn=80

" Custom commands
" iabbrev dot <c-v>u00b7
" iabbrev in <c-v>u2208
" iabbrev nin <c-v>u2209

" Personal shortcuts
nmap qwer <leader>e gg O <ESC>:put=strftime('%A - %d.%m.%Y')<CR><leader>e$a<CR>
autocmd FileType tex inoremap tt <Esc>/<++><Enter>"_c4l

" Vim line numbers
set number
set nu
" call RltvNmbr#RltvNmbrCtrl(1)

"
" Vundle settings
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'davidhalter/jedi-vim'
"Plugin 'preservim/nerdtree'
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'ycm-core/YouCompleteMe'
Plugin 'lervag/vimtex'
"Plugin 'aserebryakov/vim-todo-lists'
Plugin 'vim-scripts/RltvNmbr'
call vundle#end()

filetype plugin indent on
" Vimtex settings
let g:vimtex_view_general_viewer = 'sumatraPDF'
let g:vimtex_view_general_options = '-reuse-instance @pdf'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'

" Run VimtexComplete as soon as *.tex file is opened
autocmd VimEnter *.tex :VimtexCompile
" Delete aux files after compilation
map <F9> :!rm %:r.aux %:r.log %:r.fdb_latexmk %:r.fls %:r.synctex.gz %:r.out
"autocmd VimEnter * NERDTree | wincmd p

" Vim To-Do settings
let g:VimTodoListsMoveItems = 0
