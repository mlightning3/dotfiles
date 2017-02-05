" Enable Vim features
set nocompatible

" BEGIN VUNDLE CONFIG
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle, a plugin manager for vim
Plugin 'gmarik/Vundle.vim'

" gruvbox colorscheme
Plugin 'morhetz/gruvbox'

" Syntastic syntax checking
" Install developer tools for syntax checking
" Install flake8 for Python PEP8
Plugin 'scrooloose/syntastic'

" YouCompleteMe completions
"Plugin 'Valloric/YouCompleteMe'
" If YCM is unavailable for your platform, try SuperTab instead
"Plugin 'ervandew/supertab'

" Emmet, an HTML/CSS macro engine
" The trigger key is Ctrl-y-,
Plugin 'mattn/emmet-vim'

" File tree
" Use :NERDTree to open the tree
Plugin 'scrooloose/nerdtree'

" Sublime Text style multiple cursors
" Use Ctrl+n to highlight matches and Ctrl+b to undo highlight
Plugin 'terryma/vim-multiple-cursors'

" Fancy statusbar
" Powerline fonts recommended
Plugin 'bling/vim-airline'
Plugin 'bling/vim-bufferline'

" Git integration
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" CtrlP fuzzy search
" Use Ctrl+P to search a project for a file
Plugin 'kien/ctrlp.vim'

" Ansible syntax and indentation
Plugin 'chase/vim-ansible-yaml'

" Salt syntax and indentation
Plugin 'saltstack/salt-vim'

" Automatically close parentheses, etc.
Plugin 'Raimondi/delimitMate'

" Hotkeys for commenting/uncommenting
" g-c-c to toggle a line, g-c-Motion to toggle a motion
Plugin 'tpope/vim-commentary'

" Markdown Preview
" Use :PrevimOpen while editing Markdown to open a live preview
Plugin 'kannokanno/previm'

" Highlight trailing whitespace
" Use :StripWhitespace to remove trailing shitespace
" Plugin 'ntpeters/vim-better-whitespace'

" Jump around Vimium-style 
" Use Leader-Leader-Motion <target> to jump around
Plugin 'easymotion/vim-easymotion'

call vundle#end()
filetype plugin indent on
" END VUNDLE CONFIG

" Allow the use of project-specific vimrc
set exrc
set secure

" Color scheme
" If using a Base16 terminal theme designed to keep the 16 ANSI colors intact
" (a "256" variation) and have successfully modified your 256 colorspace with
" base16-shell you must uncomment the following line
" let base16colorspace=256
" try
" colorscheme 256_jungle
" catch
" colorscheme slate
"endtry
let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark
syntax on

" Unicode, because this is the future
set encoding=utf-8

" Sane defaults for indentation
" set expandtab
set softtabstop=4
set shiftwidth=4
set autoindent

" Show line numbers
set number

" Highlight current line
" set cursorline

" Highlight columns 80 and 120
"set colorcolumn=80,120

" Allow mouse
set mouse=a

" Spell check
set spell
set spellsuggest=best,10

" Wrap searches
set wrapscan
let mapleader = ","

" Smart search case sensitivity
set ignorecase
set smartcase

" Show completions when using commands like :edit
set wildmenu

" Allow switching buffer even if current buffer contains unsaved changes
set hidden

" Disable scratch preview window
set completeopt-=preview

" Use comma as the leader key
let mapleader=','

" Use Alt+hjkl to switch between windows
nmap <silent> <A-h> :wincmd h<CR>
nmap <silent> <A-j> :wincmd j<CR>
nmap <silent> <A-k> :wincmd k<CR>
nmap <silent> <A-l> :wincmd l<CR>

" Airline tweaks
" Always show statusline
set laststatus=2
" Use Powerline fonts
let g:airline_powerline_fonts = 1

" CtrlP tweaks
" keybinds
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Multiple cursors tweaks
" Since we bound Ctrl+P, we have to rebind previous selection
let g:multi_cursor_prev_key='<C-b>'

" Command to open browser for Markdown Preview
let g:previm_open_cmd = 'google-chrome-stable'

" Syntastic Tweaks
" Display a statusline message if errors are detected
let g:syntastic_stl_format = '%E{Errors: %e}%B{,}%W{Warnings: %w}'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" Automatically populate the list of error -> line number mappings
" (Disabled by default for compatibility)
let g:syntastic_always_populate_loc_list = 1
" Check files when they are opened
let g:syntastic_check_on_open = 1
" Don't check files when they are closed
let g:syntastic_check_on_wq = 0

" GitGutter tweaks
" Display diff markers between index and HEAD
let g:gitgutter_diff_args = ' HEAD '

" If using SuperTab instead of YCM, list completions top-to-bottom
" let g:SuperTabDefaultCompletionType = "<c-n>"
"
set clipboard=unnamedplus
