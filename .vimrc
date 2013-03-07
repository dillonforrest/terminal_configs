" File: .vimrc
" Author: Dillon Forrest


" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
call pathogen#infect()

" Quickly edit vimrc and save vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR> " \ev to edit .vimrc
nmap <silent> <leader>sv :so $MYVIMRC<CR> " \so to save .vimrc

" Keyboard Functionality
set hidden " allow :e without saving or undoing changes to current buffer
"set nowrap " don't wrap lines
set tabstop=4 " a tab is four spaces
set backspace=indent,eol,start " allow backspace over everything in insert mode
set autoindent " always autoindent
set copyindent " copy previous indentation on autoindenting
set shiftwidth=4 " four spaces used for autoindenting
set shiftround " use a multiple of shiftwidth when indenting with < or >
set smarttab " insert tabs on the start of a line according to shiftwidth,
						" not tabstop
set mouse=a " enable mouse scrolling!
set mousehide " hide mouse when typing
set scrolljump=7 " when scrolling into top or bottom, show at least 7 lines
nmap :nt :NERDTreeToggle
	" Shortcut for NERDTreeToggle
nmap :ntf :NERDTreeFind
	" Shortcut for NERDTreeFind
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
	" Close NERDTree if it's the only window open after closing other windows
nmap :t :CommandT
	" Shortcut for Command T
nmap :cp :CtrlP
	" Shortcut for CtrlP

" UI
"set number " always show line numbers
set relativenumber " show line number relative to cursor
set ruler " show status bar at bottom of window
set showmatch " show matching parenthesis
set title " change the terminal's title
set cursorline " highlight entire line which cursor is on
syntax on
syntax enable

" Solarized theme
set background=dark
colorscheme solarized
let g:solarized_visibility = "low"

" Search
set ignorecase " ignore case when searching
set smartcase " ignore case if search pattern is lowercase,
						" otherwise, search is case-sensitive
set hlsearch " highlight search items (turn off highlights with :noh)
set incsearch " show search matches as you type
set scrolloff=7 " show at least 7 lines above & below during search

" Editing
set history=1000 " remember more commands and search history
set undolevels=1000 " use more levels of undo

" Version control
set wildignore=*.swp,*.pyc " ignore file extensions
set nobackup " no .swp file -- use git instead
set noswapfile " no .swp file -- use git instead

" Syntastic linting
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1
let g:syntastic_javascript_checker="jshint"

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
