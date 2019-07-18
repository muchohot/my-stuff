"PLUGINS
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
"Line 6 is for powerline
"set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
" Plugin 'godlygeetk/tabular'
" Plugin 'plasticboy/vim-markdown'
" Plugin 'lervag/vimtex'
" Plugin 'JamshedVesuna/vim-markdown-preview'

" All of your Plugins must be added before the following line
call vundle#end()
" NerdTree toggle ctrl n
map <C-n> :NERDTreeToggle<CR>
" filetype plugin indent on

" let vim_markdown_preview_pandoc = 1
" let vim_markdown_preview_toggle = 1

"For everything else, use a tab width of 4 space chars.
set tabstop=4
set shiftwidth=4	            "indents will have a width of 4
set softtabstop=0 noexpandtab	"sets the number of columns for a tab
set expandtab		            "expand tabs to spaces

set background=dark

"Spell check colors
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=red

hi clear SpellLocal
hi SpellLocal cterm=underline ctermfg=red

hi clear SpellCap
hi SpellCap cterm=underline ctermfg=red

hi clear SpellRare
hi SpellRare cterm=underline ctermfg=red

set wildmode=longest:full,full

syntax on

set dictionary+=/usr/share/dict/words
set complete+=k

set number
set nowrap
highlight LineNr ctermfg=grey
set t_Co=256
set spelllang=en
set laststatus=2
set statusline=%f "tail of filename
set linebreak 

"Highlighting and Searching
"set hlsearch
"set incsearch
"nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>


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
    " setlocal nonumber

    setlocal spell spelllang=en_us
endfu
com! WP call WordProcessor()

" set formatoptions+=a

"MAPPINGS
map <C-L> 20zl " Scroll 20 characters to the right
map <C-H> 20zh " Scroll 20 characters to the left

"LEADER
"let mapleader = ','

"COMPILE LATEX FILE
nnoremap ,<space> :w<CR>:!pdflatex %<CR> " to compile the curent latex file you are working on
