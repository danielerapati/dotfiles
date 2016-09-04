" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
"runtime! debian.vim

" Call Pathogen for plugin installation
call pathogen#infect()

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set hlsearch        " Highlight last searched for item
set autowrite		" Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" Daniele 16/05/2012
set t_Co=256
colorscheme xoria256
set nu smd
set ai sw=4
set smartindent
set tabstop=4
set expandtab
set shiftwidth=4
set ttymouse=xterm2
set path=**
set wildmenu
set laststatus=1
set autoread

set splitbelow
set splitright

let mapleader=","
nmap <silent> <leader>s :set spell!<CR>

set laststatus=2

" Highlight the current line and have the highlighting stay where it is when
" the cursor is moved.  The mapping also sets mark l so you can type 'l to
" return to the highlighted line. Enter :match to clear the highlighting when
" finished. 
:nnoremap <silent> <Leader>l ml:execute 'match Search /\%'.line('.').'l/'<CR>

" easier moving of code blocks
vnoremap < <gv
vnoremap > >gv

" When used with fugitive shows current branch in status line
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

set clipboard=unnamedplus

" For using vim-tmux-runner and python
let g:VtrStripLeadingWhitespace = 0
let g:VtrClearEmptyLines = 0
let g:VtrAppendNewline = 1
let g:VtrUseVtrMaps = 1

" For use with vim-json
let g:vim_json_syntax_conceal = 0

" Daniele 2014/07/10 disabled as it was slowing down ruby syntax horribly
"set cursorline
" Daniele 2014/07/10 disabled new regex engine as it was slowing down ruby
" syntax horribly
"set re=1

