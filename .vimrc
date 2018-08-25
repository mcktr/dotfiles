execute pathogen#infect()

syntax enable

set nocompatible
set t_Co=16
set tabstop=4
set softtabstop=4
set autoindent
set smartindent
set background=dark " dark | light "
set number
set showcmd
set cursorline
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
set spelllang=en_us

command Warnl :/\%>120v./+

autocmd BufRead *.md setlocal spell
autocmd BufNewFile *.md setlocal spell

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
