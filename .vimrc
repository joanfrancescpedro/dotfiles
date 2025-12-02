set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set relativenumber
set cursorline
set tabstop=4
set expandtab
set ignorecase
set showmatch
set hlsearch
set history=1000
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

call plug#begin()
Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdtree'
call plug#end()

colorscheme nord

function! ToggleNerdFocus()
  " Si la finestra actual és NERDTree, vés a la següent
  if exists("b:NERDTree") && b:NERDTree.isTabTree()
    wincmd w
  " Si NO estem a NERDTree, enfoca NERDTree
  elseif exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1
    exec bufwinnr(t:NERDTreeBufName) . "wincmd w"
  else
    " Si no hi ha NERDTree obert, obre’l
    NERDTree
  endif
endfunction

command! NT call ToggleNerdFocus()

autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree() | quit | endif
let g:NERDTreeWinPos = "right"

