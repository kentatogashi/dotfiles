set nocompatible
filetype off
set expandtab 
set tabstop=2 
set shiftwidth=2 
set softtabstop=2 
set autoindent 
set smartindent 
set showcmd
set showmatch
set title
set ruler
set history=10000
set hlsearch
set incsearch
set gdefault
set ignorecase
set smartcase
set backspace=indent,eol,start
set laststatus=2
set cmdheight=2
set scrolloff=8
set sidescrolloff=16
set nobackup
set noswapfile
set autoread
set cmdheight=2
set number
set cursorline
syntax on

inoremap <silent> jj <Esc>
inoremap <silent> <C-j> <Esc>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap <> <><Left>

nnoremap <Space>h ^
nnoremap <Space>l $
nnoremap <Space> jzz
nnoremap 0 $
nnoremap 1 0

" auto install neobundle and the plugin
if has('vim_starting')
  set nocompatible
  if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
    echo "install neobundle..."
    :call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
  endif
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle'))
let g:neobundle_default_git_protocol='https'

"NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
" let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable=1
let g:unite_source_file_mru_limit=200
nnoremap <silent> <Space>uy :<C-u>Unite history/yank<CR>
nnoremap <silent> <Space>ub :<C-u>Unite file_mru buffer<CR>
nnoremap <silent> <Space>uf :<C-u>Unite file buffer<CR>
nnoremap <silent> <Space>uu :<C-u>Unite buffer<CR>
NeoBundle 'kien/ctrlp.vim.git'
NeoBundle 'scrooloose/nerdtree.git'
nnoremap <silent> <Space>nt :<C-u>NERDTree<CR>
NeoBundle 'tpope/vim-endwise'
NeoBundle 'nathanaelkane/vim-indent-guides'
colorscheme desert 
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#444433 ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#333344 ctermbg=darkgray
let g:indent_guides_guide_size = 1

NeoBundle 'slim-template/vim-slim'
NeoBundle 'thinca/vim-ref'
NeoBundle 'yuku-t/vim-ref-ri'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'mattn/zencoding-vim'
NeoBundle 'thinca/vim-quickrun'
nnoremap <silent> <Space>qr :<C-u>QuickRun<CR>

" zencoding-vim
let g:user_zen_leader_key = ''
let g:user_zen_settings = {
      \ 'lang' : 'ja',
      \ 'html' : {
      \ 'filters' : 'html',
      \ 'indentation' : ' '
      \ },
      \ 'css' : {
      \ 'filters' : 'fc',
      \ },
      \}

call neobundle#end()

filetype plugin indent on
filetype indent on
syntax on
syntax enable
hi LineNr ctermbg=0 ctermfg=0
hi CursorLineNr ctermbg=4 ctermfg=0
hi clear CursorLine
