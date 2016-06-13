syntax on
colors mustang

set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set mouse=nicr
set mouse+=a
set incsearch
set ignorecase
set smartcase
set hlsearch


nmap j gj
nmap k gk


"
" Run commands for vim
"
" #############################################################################


" Syntax/color
" ############
syntax on
colors mustang


" Put cursor at last edited position
" ##################################
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif


" Status line
" ###########
set laststatus=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
set ruler
" if version >= 700
au InsertEnter * hi StatusLine term=reverse ctermfg=89 ctermbg=211
au InsertLeave * hi StatusLine term=reverse ctermfg=237 ctermbg=248
" endif
hi StatusLine term=reverse ctermfg=237 ctermbg=248

" Line numbers
" ############
set relativenumber


" Tab behaviour
" #############
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4


" Mouse behaviour
" ###############
set mouse=nicr
set mouse+=a

" Mode changing
" #############

" leave insert mode quickly
if ! has('gui_running')
  set ttimeoutlen=10
  augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
  augroup END
endif

autocmd BufNewFile,BufRead *.mako :setf mako
