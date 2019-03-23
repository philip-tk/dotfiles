" Use Vim settings, rather then Vi settings (much better!).Work?
" This must be first, because it changes other options as a side effect.
set nocompatible

" ================ General Config ====================

set number relativenumber       "Relative line-numbering
set backspace=indent,eol,start  "Allow backspace in insert mode
set showcmd                     "Show incomplete cmds down the bottom
set showmode			"Show current mode at bottomline
set autoread                    "Reload files changed outside vim
set cursorline			"Highlight current line
set wildmenu			"Visual auto-complete for command menu
set incsearch			"Search as characters are entered
set hlsearch			"Highlight search matches
set ruler			"Shows position of cursor
set splitbelow splitright	"Non-retraded splitting

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
let mapleader=","

" Specify a directory for plugins 
call plug#begin('~/.vim/plugged')

Plug 'junegunn/goyo.vim'				"Centralised text
Plug 'terryma/vim-multiple-cursors'			"Multiple cursors
Plug 'crusoexia/vim-monokai'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }	"Live latex viewing

call plug#end()

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

"Set colorscheme
colorscheme monokai

"Setting updatetime for vim-texing.
autocmd Filetype tex setl updatetime=1

"Setting Preview as default for previewing.
let g:livepreview_previewer = 'open -a Preview'

"========== Mappings ==========

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" jk is escape
inoremap jk <Esc>

" toggle Goyo
nnoremap <leader>f :Goyo<CR>
