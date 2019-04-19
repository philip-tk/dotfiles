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

Plug 'junegunn/goyo.vim'				"Centralised text
Plug 'crusoexia/vim-monokai'

call plug#end()


"Set colorscheme
colorscheme monokai

"Compile LaTeX documents by hitting control T.
autocmd FileType tex nmap <buffer> <C-B> :!latexmk -pdf %<CR>

"Open current LaTeX pdf output file in skim.
autocmd FileType tex nmap <buffer> T :!open -a Skim %:r.pdf<CR><CR>

"========== Mappings ==========

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" Toggle spellcheck with <sp>
noremap <silent> sp :setlocal<space>spell!<CR>

" Get tab to do autocompletion.
inoremap <Tab> <C-P>

" Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" jk is escape
inoremap jk <Esc>

" toggle Goyo
nnoremap <leader>f :Goyo<CR>
