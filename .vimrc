" Use Vim settings, rather then Vi settings
" This must be first, because it changes other options as a side effect.
set nocompatible

" ============================ General Config ===============================

set number relativenumber       	"Relative line-numbering
set backspace=indent,eol,start  	"Allow backspace in insert mode
set showcmd                     	"Show incomplete cmds down the bottom
set showmode				"Show current mode at bottomline
set autoread                    	"Reload files changed outside vim
set autoindent				"Inserts indents automatically
set cursorline				"Highlight current line
set wildmenu				"Visual auto-complete for command menu
set incsearch				"Search as characters are entered
set hlsearch				"Highlight search matches
set ruler				"Shows position of cursor
set splitbelow splitright		"Non-retraded splitting
set hidden				"Buffers can exist in the background
set linebreak				"Allows word wrapping
set complete+=kspell			"Allows tab completion for insert mode
set ignorecase				"Ignores case during autocompletion
set infercase				"Infers case for autocompletion
set mps+=<:>				"Matches quote pairs and angular brackets
set directory=$HOME/.vim//swapfiles//	"Moves swapfiles out of $HOME
filetype plugin indent on		"Filetype indent detection
syntax on				"Allows syntax highlighting

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
let mapleader=","

" Specify a directory for plugins 
call plug#begin('~/.vim/plugged')

Plug 'junegunn/goyo.vim'		"Condusive environment for writing prose
Plug 'crusoexia/vim-monokai'		"Monokai Colourscheme
Plug 'SirVer/ultisnips'			"UltiSnips to create snippets
Plug 'tobyS/skeletons.vim'		"Simple vim-skeleton plugins
Plug 'tpope/vim-surround'		"Better surround support
Plug 'tpope/vim-commentary'		"Comment stuff out using gc
Plug 'tmsvg/pear-tree'			"Auto-pair plugin
Plug 'vimoutliner/vimoutliner'		"Vim Outliner plugin (:help vo)

call plug#end()

"Set colorscheme
colorscheme monokai

"========== Mappings ==========

" move vertically by visual line
nnoremap <Up> gk
nnoremap <Down> gj

" Remap Y to y$, because yy can already yank full lines
nnoremap Y y$

" Toggle spellcheck with ,c
noremap <leader>c :setlocal<space>spell!<CR>

" Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" jk is escape
inoremap jk <Esc>

" toggle Goyo
nnoremap <leader>f :Goyo<CR>

" PearTree Configuration
let g:pear_tree_smart_openers = 1
let g:pear_tree_smart_closers = 1

" Ulti-Snip Configuration
"
"Open UltiSnips edit function with ,ue
nmap <leader>ue :UltiSnipsEdit<cr>

let g:UltiSnipsExpandTrigger = '<Tab>'
let g:UltiSnipsJumpForwardTrigger = '<Tab>'
let g:UltiSnipsJumpBackwardTrigger = '<C-Tab>'
let g:UltiSnipsSnippetsDir = "~/.vim/plugged/ultisnips/UltiSnips"
let g:UltiSnipsEditSplit="vertical"

