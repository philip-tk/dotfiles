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
set complete+=k				"Allows tab completion for insert mode
set ignorecase				"Ignores case during autocompletion
set infercase				"Infers case for autocompletion
set mps+=<:>				"Matches quote pairs and angular brackets
set dictionary+=/usr/share/dict/words	"Shows vim where the dictionary is.
set directory=$HOME/.vim//swapfiles//	"Moves swapfiles out of $HOME
set omnifunc=syntaxcomplete#Complete	"Omnifunction completion
filetype plugin indent on		"Filetype plugin with indent support
syntax on				"Allows syntax highlighting

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
let mapleader=" "

" Specify a directory for plugins 
call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'			"latex text objects
Plug 'crusoexia/vim-monokai'		"Monokai Colourscheme
Plug 'SirVer/ultisnips'			"UltiSnips to create snippets
Plug 'tpope/vim-surround'		"Better surround support
Plug 'tpope/vim-commentary'		"Comment stuff out using gc
Plug 'tpope/vim-repeat'			"Allows usage of '.' for plugin maps

call plug#end()

"Set colorscheme
colorscheme monokai

"========== Mappings ==========

" Surrounder Configuration.
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap " ""<Left>

" Insert mode movements
inoremap jk <Right>
inoremap jj <Down>
inoremap kk <Up>
inoremap kj <Left>

" move vertically by visual line
nnoremap <Up> gk
nnoremap <Down> gj

" Remap Y to y$, because yy can already yank full lines
nnoremap Y y$

" Send line to command line and bring output into buffer with Q
nnoremap Q !!sh<CR>

" Toggle spellcheck with ,c
noremap <leader>c :setlocal<space>spell!<CR>

noremap <leader>t :bel term<CR>

" Shortcutting split navigation, saving a keypress:
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" vimtex Configuration
let g:tex_flavor='latex'

" Ulti-Snip Configuration
"
"Open UltiSnips edit function with ,ue
nnoremap <leader>ue :UltiSnipsEdit<cr>

let g:UltiSnipsExpandTrigger = '<Tab>'
let g:UltiSnipsJumpForwardTrigger = '<Tab>'
let g:UltiSnipsJumpBackwardTrigger = '<C-Tab>'
let g:UltiSnipsSnippetsDir = "~/.vim/plugged/ultisnips/UltiSnips"
let g:UltiSnipsEditSplit="vertical"

