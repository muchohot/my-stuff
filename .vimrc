"PLUGINS
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
""Line 6 is for powerline
""set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
"
call vundle#begin()
"
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'mattn/emmet-vim'
"" Plugin 'godlygeetk/tabular'
"" Plugin 'plasticboy/vim-markdown'
"" Plugin 'lervag/vimtex'
"" Plugin 'JamshedVesuna/vim-markdown-preview'
"
"" All of your Plugins must be added before the following line
call vundle#end()
"" NerdTree toggle ctrl n
"map <C-n> :NERDTreeToggle<CR>
filetype plugin indent on

"" let vim_markdown_preview_pandoc = 1
"" let vim_markdown_preview_toggle = 1

"For everything else, use a tab width of 4 space chars.
set tabstop=2
set shiftwidth=2	            "indents will have a width of 4
set softtabstop=2               "sets the number of columns for a tab
set expandtab		            "expand tabs to spaces
set autoindent
set smartindent
set copyindent
set cindent

"below sets line across screen
"set cursorline

set number
set rnu

set background=dark

"doesn't make you save buffer before switching
set hidden

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
" I don't know if the below is necessary (ignores files when using find)
set wildignore+=/node_modules/**
syntax on

set dictionary+=/usr/share/dict/words
set complete+=k

set nowrap
highlight LineNr ctermfg=grey
set t_Co=256
set spelllang=en
set laststatus=2
"set statusline+=%F "tail of filename
set statusline=%{expand('%:p:h:t')}/%t
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
    " setlocal nonumber

    setlocal spell spelllang=en_us
endfu
com! WP call WordProcessor()

" set formatoptions+=a

"auto toggles relativeline number 
"set relativenumber

"augroup numbertoggle
"    autocmd!
"    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
"    autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
"augroup END

"MAPPINGS
map <C-L> 20zl " Scroll 20 characters to the right
map <C-H> 20zh " Scroll 20 characters to the left

"LEADER
"let mapleader = ','

"COMPILE LATEX FILE
nnoremap ,<space> :w<CR>:!pdflatex %<CR> " to compile the curent latex file you are working on

" disable bell for WSL
" set visualbell
set belloff=all
set clipboard=unnamedplus

" mouse support
set mouse=a

"NERDTree shortcut
map <C-n> :NERDTreeToggle<CR>

"bracket highlight colors
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta

"-- FOLDING --
set foldmethod=syntax "syntax highlighting items specify folds
set foldcolumn=1 "defines 1 col at window left, to indicate folding
let javaScript_fold=1 "activate folding by JS syntax
set foldlevelstart=99 "start file with all folds opened

set omnifunc=syntaxcomplete#Complete

" enable line numbers
let NERDTreeShowLineNumbers=1

" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber

"highlighting (to turn off temporarily just typre :noh in command mode
set hlsearch

"incremental search as typing vim
set incsearch

"ignore case when searching
set ignorecase

"press enterin normal mode to stop highlighting
:nnoremap <CR> :nohlsearch<CR><CR>

"for tag jumping in html
runtime macros/matchit.vim

"toggle cursorline when entering insert mode
autocmd InsertEnter,InsertLeave * set cul!

"when a file changes outside of vim reload the buffer
set autoread
