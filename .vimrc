" Load plugins
    runtime ~/.vim/bundle/pathogen/autoload/pathogen.vim
    execute pathogen#infect()
    Helptags

" Top-level settings
    set nocompatible
    cd ~/documents
    syntax on


" Custom keybindings
    imap jk <esc>
    imap kj <esc>
    imap <silent> <Tab> <c-r>=Tab_Or_Complete()<cr>
    imap <silent> <c-a> <esc>ggVG
    map  <silent> <c-a> <esc>ggVG
    map  <silent> <c-e> <esc>:silent !open .<cr>
    map  <silent> <c-h> <c-w>h
    map  <silent> <c-j> <c-w>j
    map  <silent> <c-k> <c-w>k
    map  <silent> <c-l> <c-w>l
    map  <silent> <c-t> <esc>:tabnew<cr>
    map  <silent> <c-x> <esc>:tabclose<cr>
    map  <silent> <c-z> <esc>:tabnew ~/.vimrc<cr>
    map  <silent> <leader>[ <esc>:setlocal wrap!<cr>:setlocal wrap?<cr>
    map  <silent> <leader>] <esc>:noh<cr>
    map  <silent> <leader>e <esc>:Errors<cr>
    map  <silent> <leader>i <esc>:setlocal foldmethod=indent<cr>
    map  <silent> <leader>n :setlocal relativenumber!<cr>
    map  <silent> <leader>N :setlocal number!<cr>
    map  <silent> <leader>t <plug>TaskList
    map  <silent> <leader>u <esc>:UndoTreeToggle<cr>
    map  <silent> <leader>v "*p
    map  <silent> <leader>y "*y
    map  <silent> j gj
    map  <silent> k gk
    map  zq          ZQ

" Tabs should be 4 spaces
    set tabstop=4
    set shiftwidth=4
    set expandtab
    set autoindent

" Search options
    set incsearch
    set ignorecase
    set smartcase
    set hlsearch

" Wrap settings
    set backspace=indent,eol,start
    set formatoptions=lrocj
    set lbr

" File organization
    set autochdir
    set foldmethod=syntax

" Keep your directories free of clutter
    set nobackup
    set nowritebackup

" Visual aesthetics
    set autoindent
    set nowrap
    set number relativenumber
    set showcmd
    set ruler
    set equalalways

" Plugin settings
    set encoding=utf-8
    set guifont="Fantasque Sans Mono:h12"
    set laststatus=2
    set noshowmode

" Mouse controls
    if has("mouse")
        set mouse=a
        set selectmode=
    endif

" Autocommands
if has("autocmd")
    filetype plugin indent on

    " Stop dinging, dangit!
    set noerrorbells visualbell t_vb=
    autocmd GUIEnter * set visualbell t_vb=

    " Jump to line cursor was on when last closed, if available
    autocmd BufReadPost *
        \ if line("'\'") > 0 && line("'\'") <= line("$") |
        \  exe "normal g`\"" |
        \ endif

    "autocmd VimEnter * RainbowParenthesesLoadRound
endif

" Functions

function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
