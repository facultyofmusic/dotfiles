"
"
" BEGIN
"
"
set nocompatible

" ================ SYNTAX ============================
au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars

" ================ General Config ====================

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all 
" the plugins.
let mapleader=","

" =============== Vundle Initialization ===============
" This loads all the plugins specified in ~/.vim/vundle.vim
" Use Vundle plugin to manage all other plugins
if filereadable(expand("~/.vim/vundles.vim"))
  source ~/.vim/vundles.vim
endif

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.

silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif


" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ YOU COMPLETE ME ==================
let g:ycm_min_num_of_chars_for_completion = 99

" ================ EXECUTE PATHOGEN =================
execute pathogen#infect()

" ================ TAGLIST OPTIONS ==================
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_Auto_Open=1

" ================ CONTROL-P VARS ===================
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0

" ================ KEY REMAPPINGS ===================
map <silent> <F2> :NERDTreeToggle<CR>
imap <silent> <F2> <Esc>:NERDTreeToggle<CR>

map <silent> <F3> <Esc>:CtrlP<CR>
imap <silent> <F3> <Esc>:CtrlP<CR>

map <silent> <F4> <Esc>:TlistToggle<CR>
imap <silent> <F4> <Esc>:TlistToggle<CR>i

" map <silent> <F5> <Esc>:tabp<CR>
" imap <silent> <F5> <Esc>:tabp<CR>i

" map <silent> <F6> <Esc>:tabn<CR>
" imap <silent> <F6> <Esc>:tabn<CR>i

map <silent> <F7> <Esc>:q<CR>
imap <silent> <F7> <Esc>:q<CR>

map <silent> <F8> <Esc>:qa<CR>
imap <silent> <F8> <Esc>:qa<CR>


" =============== SOLARIZED SYNTAX HIGHLIGHT ========
set hls
syntax enable
set background=dark
" colorscheme solarized


"
"
"
"
" END
"
"
"
"
