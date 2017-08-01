" Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'Shougo/deoplete.nvim'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'chriskempson/base16-vim'
Plug 'tshirtman/vim-cython'
Plug 'othree/html5.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sleuth'
Plug 'leafgarland/typescript-vim'
Plug 'junegunn/goyo.vim'
Plug 'vim-jp/vim-java'
Plug 'mhinz/vim-signify'
call plug#end()

set colorcolumn=80

" Colours
set background=dark
syntax enable
colorscheme gruvbox
highlight Normal guibg=none
highlight NonText guibg=none

set backup
set undofile
set ruler
set showcmd
set number
set cursorline
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
set splitbelow
set splitright
set relativenumber
set smartindent

set mouse=a

highlight cursorline guibg=#515151

" Custom colours for svn diff
highlight diffAdded guibg=#ddffdd
highlight diffRemoved guibg=#ffdddd
highlight diffFile guibg=#00ff00

" Opens `svn diff` (with the colors above)
if !exists(":SvnDiff")
	command SvnDiff :set syntax=diff | :r !svn diff
endif

if !exists(":GitDiff")
	command GitDiff :set syntax=diff | :r !git diff
endif

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set buftype=nofile | read ++edit # | 0d_ | diffthis
                 \ | wincmd p | diffthis
endif

" Case insensitive save
if !exists(":W")
	command W :w
endif	

" Easy command to edit init.vim
if !exists(":EditInit")
	command EditInit :e ~/.config/nvim/init.vim
endif

" Deoplete
let g:deoplete#enable_at_startup = 1
" Tab and Shift-Tab to navigate. Shift-Tab will also inverse tab if not using
" deoplete
inoremap <silent><expr> <Tab> pumvisible() ? "<C-n>" : "\<Tab>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "<C-p>" : "\<C-d>"
set completeopt+=noinsert

" NERDTree
map <C-n> :NERDTreeToggle<cr>


