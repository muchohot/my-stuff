"How to reload .vimrc from vim 
":so $MYVIMRC

"Set syntax on
syntax on

"Recognize filetypes for syntax highlighting
filetype on

"Set background dark so colors work
set background=dark

"Set hybrid line number
set number
set rnu

"Show status mode permanently
set showmode

"Show current column and line in bottom right
set ruler

"Turn clipboard charing on
set clipboard=unnamed

"Turn on mouse support for copy past (ignore line numbers)
"set mouse=a

"Set full path on the statusline
set laststatus=2
set statusline=%F

"Set so that vim does not break in middle of word
set linebreak

"Set hightlight search
set hlsearch

"Set wrap off
set nowrap

"Universal tabs are always 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

"Set autoindent
set autoindent
