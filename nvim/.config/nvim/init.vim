call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'kaicataldo/material.vim'
Plug 'preservim/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mhinz/vim-signify'
Plug 'itchyny/lightline.vim'

call plug#end()

nmap <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeMinimalUI=1

if (has('termguicolors'))
  set termguicolors
endif
let g:material_theme_style='palenight'
colorscheme material
let g:lightline={'colorscheme': 'material_vim'}

" vim-signify updatetime
set updatetime=100

hi TrailingSpace guibg=red
match TrailingSpace /\s\+$/

nnoremap <M-CR> :botright split<Bar>resize 15<Bar>terminal<CR>
tnoremap <Esc> <C-\><C-n>

set number
set cursorline
set autoindent
set mouse=a
set lazyredraw
