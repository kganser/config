set nocompatible

" https://github.com/skwp/dotfiles/blob/master/vimrc
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" Search
set incsearch
set hlsearch
map <Space> :noh<cr>

" Undo across sessions
"silent !mkdir ~/.vim/backups > /dev/null 2>&1
"set undodir=~/.vim/backups
"set undofile

" Indentation
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

" Display tabs and trailing spaces visually
set list
set listchars=tab:··,trail:·
