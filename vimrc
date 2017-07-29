execute pathogen#infect()
syntax on
filetype plugin indent on
call pathogen#helptags()



" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Mouse and backspace
set mouse=a
set bs=2     " make backspace behave like normal again


" Rebind <Leader> key
let mapleader = ","


" map sort function to a key
vnoremap <Leader>s :sort<CR>


" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation


" Show whitespace
" MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/


" Showing line numbers and length
set number  " show line numbers
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233

set t_Co=256
color molokai
let g:rehash256 = 1
let g:molokai_original = 1


" easier formatting of paragraphs
vmap Q gq
nmap Q gqap


" Useful settings
set history=700
set undolevels=700


" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab


" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" ============================================================================
" IDE Setup
" ============================================================================

"NERDTree stuff
"autocmd vimenter * NERDTree
let NERDTreeHijackNetrw = 0
noremap <silent> <leader>n :NERDTreeToggle<CR> <C-w>=
noremap <silent> <leader>f :NERDTreeFind<CR> <C-w>=


function! NERDTreeRefresh()
    if &filetype == "nerdtree"
                silent exe substitute(mapcheck("R"), "<CR>", "", "")
                    endif
                endfunction

                autocmd BufEnter * call NERDTreeRefresh()

let g:NERDTreeUpdateOnCursorHold = 0

"Airline setup
set laststatus=2
let g:airline_theme='molokai'

" Settings for ctrlp
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

"ultisnips
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"add indentation line bros
let g:indentLine_faster = 1
let g:indentLine_setConceal = 0
