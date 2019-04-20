"PLUGINS
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
" Plugin 'JamshedVesuna/vim-markdown-preview'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" let vim_markdown_preview_pandoc = 1
" let vim_markdown_preview_toggle = 1

"Support for makefiles

" Only do this when compiled with support for autocommands.
if has("autocmd")
	"Use filetype detection and file-based automatic indenting
	filetype plugin indent on

	"Use actual tab chars in Makefiles.
	autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
endif

"For everything else, use a tab width of 4 space chars.
set tabstop=4
set shiftwidth=4	"indents will have a width of 4
set softtabstop=4	"sets the number of columns for a tab
set expandtab		"expand tabs to spaces

set background=dark

set wildmode=longest:full,full

syntax on

set dictionary+=/usr/share/dict/words
set complete+=k

set number
set nowrap
highlight LineNr ctermfg=grey
set spelllang=en_us
set laststatus=2
set statusline=%f "tail of filename
set linebreak 

"Finding files
"tab completion for files
"search subfolders (stay in root of projects you are editing in vim)
set path+=** 
"show all matching files when we tab complete
"use this by typing :find <filename> in the command line
set wildmenu 

"Tag jumping (hover over word and find it in your files
command! MakeTags !ctags -R .
"use the above by ^] to jump g^] to find partial matches and ^t to go back

"WORD PROCESSING
func! WordProcessor()
    map j gj
    map k gk
    setlocal textwidth=80
    setlocal formatoptions=1
    setlocal noexpandtab
    setlocal wrap
    setlocal linebreak
    setlocal nonumber

    setlocal spell spelllang=en_us
endfu
com! WP call WordProcessor()

"MAPPINGS
map <C-L> 20zl " Scroll 20 characters to the right
map <C-H> 20zh " Scroll 20 characters to the left

nnoremap ,<space> :w<CR>:!pdflatex %<CR> " to compile the curent latex file you are working on
