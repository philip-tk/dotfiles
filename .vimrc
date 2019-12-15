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
set hidden			"Buffers can exist in the background
set linebreak			"Allows word wrapping
set complete+=kspell		"Allows tab completion for insert mode

syntax on			"Allows syntax highlighting

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
let mapleader=","

" Specify a directory for plugins 
call plug#begin('~/.vim/plugged')

Plug 'junegunn/goyo.vim'		"Centralised text
Plug 'crusoexia/vim-monokai'		"Monokai Colourscheme
Plug 'SirVer/ultisnips'			"UltiSnips to create snippets
Plug 'honza/vim-snippets'		"Snippet engine

call plug#end()


"Set colorscheme
colorscheme monokai

"========== Mappings ==========

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" Autocomplete brackets and etc.
inoremap ' ''<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap " ""<Left>

" Toggle spellcheck with <sp>
noremap <silent> sp :setlocal<space>spell!<CR>

" Get Shift - Tab to do autocompletion.
inoremap <S-Tab> <C-P>

" Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" jk is escape
inoremap jk <Esc>

" toggle Goyo
nnoremap <leader>f :Goyo<CR>

" Open UltiSnips edit function with ,ue .
nmap <leader>ue :UltiSnipsEdit<cr>

" Ulti-Snip Configuration
let g:UltiSnipsExpandTrigger = '<Tab>'
let g:UltiSnipsJumpForwardTrigger = '<Tab>'
let g:UltiSnipsJumpBackwardTrigger = '<C-Tab>'
let g:UltiSnipsSnippetsDir = "~/.vim/plugged/ultisnips/UltiSnips"
let g:UltiSnipsEditSplit="vertical"

