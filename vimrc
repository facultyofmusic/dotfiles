">Vundle Plugins
" ==============
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

">Quick compiling
Plugin 'xuhdev/SingleCompile'

">Languages and Syntax
Plugin 'othree/html5.vim'
" Plugin 'digitaltoad/vim-jade'
" Plugin 'groenewege/vim-less'
" Plugin 'vim-stylus'
Plugin 'c.vim'
" Plugin 'derekwyatt/vim-scala'
Plugin 'mattn/emmet-vim'
" Plugin 'coot/atp_vim'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'leafgarland/typescript-vim'
Plugin 'rhysd/vim-clang-format'

">UI Upgrades
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
" Plugin 'scrooloose/syntastic'
" Plugin 'sjl/gundo.vim'
" Plugin 'fholgado/minibufexpl.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'nanotech/jellybeans.vim'
Plugin 'w0ng/vim-hybrid'
Plugin 'godlygeek/csapprox'

">Editing Upgrades
" Plugin 'ack.vim'
" Plugin 'YankRing.vim'
" Plugin 'goldfeld/vim-seek'
Plugin 'tomtom/tcomment_vim'
Plugin 'Raimondi/delimitMate'
" Plugin 'tpope/vim-surround'
Plugin 'Shougo/neocomplcache'
" Plugin 'davidhalter/jedi-vim'
Plugin 'Lokaltog/vim-easymotion'
" Plugin 'simplyzhao/cscope_maps.vim'
" Plugin 'rizzatti/funcoo.vim'
" Plugin 'rizzatti/dash.vim'
Plugin 'terryma/vim-multiple-cursors'

">Misc Upgrades
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on


"============== vimtex ===============
let g:vimtex_format_enabled=1
" let g:vimtex_fold_enabled=1

" latex exclusive leader shortcuts
autocmd FileType tex call SetVimTexShortcuts()
function SetVimTexShortcuts()
    nnoremap <leader>te :VimtexErrors<CR>
    nnoremap <leader>tc :VimtexCompile<CR>
endfunction

"============= inc search ==============
map /   <Plug>(incsearch-forward)
map ?   <Plug>(incsearch-backward)
map g/  <Plug>(incsearch-stay)

"================ CONTROL-P VARS ===================
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

"=============== TAGBAR VARS =======================
let g:tagbar_ctags_bin='/usr/local/Cellar/ctags/5.8/bin/ctags'  " Proper Ctags locations
let g:tagbar_width=26   " Default is 40, seems too wide


" ================ KEY REMAPPINGS ===================
map <silent> <F2> :NERDTreeToggle<CR>
imap <silent> <F2> <Esc>:NERDTreeToggle<CR>

map <silent> <F3> <Esc>:CtrlP<CR>
imap <silent> <F3> <Esc>:CtrlP<CR>

map <silent> <F4> <Esc>:TagbarToggle<CR>
imap <silent> <F4> <Esc>:TagbarToggle<CR>

">scrooloose/syntastic
" let g:syntastic_quiet_warnings = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_error_symbol = '✗'
" let g:syntastic_warning_symbol = '⚠'
" let g:syntastic_auto_loc_list = 0

"=============VIM AIRLINE
set guifont=Monaco\ for\ Powerline\ 10 
let g:airline_powerline_fonts = 1
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_theme='powerlineish'

">fholgado/minibufexpl.vim
" let g:miniBufExplHideWhenDiff = 1

">Raimondi/delimitMate
" let delimitMate_balance_matchpairs = 1

">mattn/gist-vim
" let g:gist_clip_command = 'pbcopy'
" let g:gist_detect_filetype = 1
" let g:gist_show_privates = 1
" let g:gist_post_private = 1

"============altercation/vim-colors-solarized
let g:solarized_termtrans = 1
let g:solarized_termcolors = 256
let g:solarized_constrast = "normal"
let g:solarized_visibility = "normal"

set background=dark

colorscheme solarized

"============nanotech/jellybeans.vim
let g:jellybeans_use_lowcolor_black = 0
" colorscheme jellybeans

"============hybrid
" colorscheme hybrid

">Set font for GUI vim.
if has("gui_running")
  set guifont=Monaco:h14
  set guioptions-=T
  set guioptions-=r
  set guioptions-=R
  set guioptions-=l
  set guioptions-=L
endif

">dhalter/jedi-vim
" let g:jedi#auto_initialization = 1
" let g:jedi#popup_on_dot = 0
" let g:jedi#use_tabs_not_buffers = 0
" let g:jedi#show_function_definition = 0
" autocmd FileType python let b:did_ftplugin = 1

">Shougo/neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_ignore_case = 0
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_min_keyword_length = 3
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_compare_function = 'neocomplcache#compare_human'

if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif

if !exists('g:neocomplcache_omni_functions')
  let g:neocomplcache_omni_functions = {}
endif
let g:neocomplcache_omni_functions['python'] = 'jedi#complete'

if !exists('g:neocomplcache_disabled_sources_list')
  let g:neocomplcache_disabled_sources_list = {}
endif

function! CompleteCommonStringOrFinish(normal)
  if pumvisible()
    let l:result = neocomplcache#complete_common_string()
    let l:check = neocomplcache#get_cur_text()
    if l:result != '' && strlen(l:result) - strridx(l:result, l:check) != strlen(l:check)
      return l:result
    endif
    return "\<cr>"
  endif
  return a:normal
endfunction

autocmd FileType * if &completefunc != '' | let &omnifunc=&completefunc | endif

inoremap <expr> <tab> CompleteCommonStringOrFinish("\<tab>")

" Best leader
let mapleader = ","

" Force save read only files.
" cnoremap w!! %!sudo tee > /dev/null %

" Clears highlighting.
nnoremap <leader><space> :noh<cr>

" Reselect visual block after indent/outdent
" EDIT: Honestly just use '.' and 'u'.
" vnoremap < <gv
" vnoremap > >gv

" Disable arrow keys by default, turn them into something useful (switch buffer).
nnoremap <silent> <left> :tabp<cr>
nnoremap <silent> <right> :tabn<cr>
" nnoremap <left> :bp<cr>
" nnoremap <right> :bn<cr>

" Disable shift + K opening man pages.
" nnoremap <s-k> <nop>

" Don't need shift for commands.
nnoremap ; :
vnoremap ; :

" Remap split window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Fix save typos.
:ca WQ wq
:ca Wq wq
:ca QA qa
:ca Qa qa
:ca W w
:ca Q q


" Misc Settings
" =============
set t_Co=256
colorscheme jellybeans

" Remember 700 lines of history.
set history=700

" Allow per project vimrc
set exrc
set secure

" Enable filetype plugin and indent files
filetype plugin on
filetype indent on

" Disable modelines (security exploits)
" set modelines=0

" Show line with cursor
set cursorline

" Fast terminal
set ttyfast

" Set to auto read when a file is changed from the outside
set autoread

" Speed up <shift>O
set timeoutlen=500
set ttimeoutlen=50

" Add mouse scrolling and drag support in tmux
set mouse=a
if &term =~ '^screen'
    " tmux knows the extended mouse mode 
    set ttymouse=xterm2
endif

" Start scrolling 5 lines before the top/bottom
set scrolloff=5

" Turn on enhanced completions, and set completion options
" set wildmenu
set wildmode=list:longest
set completeopt=menuone,longest

" Command bar height
set cmdheight=1

" Change buffers without saving (allow hidden buffers).
set hidden

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase
set smartcase

" Highlight search results
set hlsearch

" Make search act like in modern browsers
set incsearch

" Do not redraw when executing macros
set nolazyredraw

" Magic for reuglar expressions
set magic

" Show matching bracket indicator when text indicator is over them
set showmatch
set matchtime=2

" No sound on errors
set noerrorbells
set visualbell
set t_vb=

" Attempt to turn on encoding
scriptencoding utf-8
set encoding=utf8
try
  lang en_US
catch
endtry

" Show the line number
set number

" Enable syntax highlighting
syntax on

" Set invisible characters
set listchars=eol:¬,tab:▸·,trail:·

" Turn backup off (mostly using git, etc anyway)
set nobackup
set nowb
set noswapfile

" Tab settings
set expandtab
set smarttab
set shiftround
set shiftwidth=2
set tabstop=2
set softtabstop=2

set linebreak
set textwidth=0
set colorcolumn=100
set wrap

" Format options
set formatoptions=qrn1

" Indentation settings
set autoindent
set smartindent
set cindent
au! FileType python setl nosmartindent 

" Always hide the status line
set laststatus=2


