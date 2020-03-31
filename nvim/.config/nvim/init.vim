call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'preservim/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mhinz/vim-signify'
Plug 'itchyny/lightline.vim'
Plug 'mbbill/undotree'
Plug 'luochen1990/rainbow'
Plug 'rakr/vim-one'

call plug#end()

nmap <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeMinimalUI=1

nnoremap <C-z> :UndotreeToggle<CR>

if (has('termguicolors'))
  set termguicolors
endif
set background=dark
let g:one_allow_italics=1
colorscheme one
let g:lightline={'colorscheme': 'one'}

let g:rainbow_active=1

" vim-signify updatetime
set updatetime=100

hi TrailingSpace guibg=red
match TrailingSpace /\s\+$/

nnoremap <M-CR> :botright split<Bar>resize 15<Bar>terminal<CR>
autocmd TermOpen * startinsert
tnoremap <Esc> <C-\><C-n>

set number
set cursorline
set autoindent
set mouse=a
set lazyredraw
set exrc
set secure
