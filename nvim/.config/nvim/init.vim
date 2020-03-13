call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'preservim/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mhinz/vim-signify'
Plug 'itchyny/lightline.vim'

call plug#end()

nmap <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeMinimalUI=1

let g:lightline={'colorscheme': 'wombat'}

hi TrailingSpace guibg=red
match TrailingSpace /\s\+$/

set termguicolors
syntax on
set number
set cursorline
set autoindent
set mouse=a
set lazyredraw
