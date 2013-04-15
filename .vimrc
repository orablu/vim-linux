" Load plugins
    runtime bundle/vim-pathogen/autoload/pathogen.vim
    call pathogen#infect()
    Helptags

" Top-level settings
    set nocompatible
    cd ~/Documents

" Choose a colorscheme
    colorscheme molokai

" Custom keybindings
    imap          jk        <esc>
    imap          kj        <esc>
    imap          <c-a>     <esc>ggVG
    map  <silent> <c-a>     <esc>ggVG
    map  <silent> <c-e>     <esc>:silent !dolphin .<cr>
    map  <silent> <c-h>     <c-w>h
    map  <silent> <c-j>     <c-w>j
    map  <silent> <c-k>     <c-w>k
    map  <silent> <c-l>     <c-w>l
    map  <silent> <c-t>     <esc>:tabnew<cr>
    map  <silent> <c-x>     <esc>:tabclose<cr>
    map  <silent> <c-z>     <esc>:tabnew ~/.vimrc<cr>
    map  <silent> <leader>[ <esc>:setlocal wrap!<cr>:setlocal wrap?<cr>
    map  <silent> <leader>] <esc>:noh<cr>
    map  <silent> <leader>e <esc>:Errors<cr>
    map  <silent> <leader>i <esc>:setlocal foldmethod=indent<cr>
    map  <silent> <leader>n :NumbersToggle
    map  <silent> <leader>N :setlocal number!<cr>
    map  <silent> <leader>t <plug>TaskList
    map  <silent> <leader>u <esc>:UndoTreeToggle<cr>
    map  <silent> <leader>v "*p
    map  <silent> <leader>y "*y

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
    set formatoptions=l
    set lbr

" File organization
set autochdir
set foldmethod=syntax

" Keep your directories free of clutter
    set nobackup
    set nowritebackup

" Visual aesthetics
    set nowrap
    set number
    set showcmd
    set ruler

"Plugin settings
    set encoding=utf-8
    set laststatus=2
    set noshowmode
    let g:spchkdialect="usa"
    let g:spchkacronym=1

" Mouse controls
    if has("mouse")
        set mouse=a
        set selectmode=
    endif

" Stop dinging, dangit!
    set noerrorbells
    set visualbell
    set t_vb=

" GUI-specific settings
if has("gui")
    set guifont=Consolas\ for\ Powerline\ FixedD:h12
    let g:Powerline_symbols="fancy"
endif

" Autocommands
if has("autocmd")
    filetype plugin indent on

    autocmd GUIEnter * set visualbell t_vb=

    " Jump to line cursor was on when last closed, if available
    autocmd BufReadPost *
        \ if line("'\'") > 0 && line("'\'") <= line("$") |
        \  exe "normal g`\"" |
        \ endif

    "autocmd VimEnter * RainbowParenthesesLoadRound
endif

" Plugin variables
    let g:rbpt_colorpairs = [
        \ ['cyan',       'cyan'],
        \ ['green',      'green'],
        \ ['yellow',     'yellow'],
        \ ['red',        'red'],
        \ ['blue',       'blue'],
        \ ]
    let g:rbpt_max = 50
