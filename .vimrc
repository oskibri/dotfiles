"Set nocompatible, where to store .viminfo and add in testing vim config
set nocp
"set viminfo+=n$HOME/.local/state/.viminfo
"source $HOME/.config/vim/testing/vimconf.vim

"Remember last positions across sessions
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"Enable persistent undo's across sessions
let temp_undodir = expand('$HOME/.local/state/vimundodir')
if !isdirectory(temp_undodir)
    call system('mkdir -p ' . temp_undodir)
endif
let &undodir = temp_undodir
set undofile
set ul=1000
set ur=1000

"Enable mouse in vim and scrolloff to 8
set mouse=a
set so=8

"Enable filetype recognition and syntax highlighting
filetype plugin indent on
syntax on

"Enable line and relative numbers
set nu
set rnu

"Enable proper indentation and expand to spaces instead of tabs
set sw=4
set ts=4
set et
"Enable smart and auto indent (C-like)
set ai
set si
set sta

"Searching
set is
set ic
set scs
set sm
