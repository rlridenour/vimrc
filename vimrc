" File vimrc
" Author Randy Ridenour
" Created 19 June 2010 1006


""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle

""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
filetype off  " required!

set rtp+=~/.vim/vundle.git/ 
call vundle#rc()

" My Bundles here:
"
" original repos on github
Bundle 'scrooloose/nerdtree'
Bundle 'msanders/snipmate.vim'
Bundle 'vim-markdown-preview'
" Bundle 'lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" vim-scripts repos
Bundle 'LaTeX-Box'
Bundle 'Markdown'
" Bundle 'L9'
" Bundle 'FuzzyFinder'
" Bundle 'rails.vim'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!


""""""""""""""""""""""""""""""""""""""""""""""""""
" General

""""""""""""""""""""""""""""""""""""""""""""""""""


" window size
set lines=60
set columns=80

" Use Vim settings, not Vi
set nocompatible

" disable intro message
" set shortmess+=I

call pathogen#runtime_append_all_bundles() 
call pathogen#helptags()

filetype on

" Load filetype plugins
filetype plugin on

" load indent files for specific filetypes
filetype indent on


set grepprg=grep\ -nH\ $*



au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview

set confirm

" Time to wait after ESC
set timeoutlen=2000

" Default font
" set guifont=Inconsolata:h14
""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching

""""""""""""""""""""""""""""""""""""""""""""""""""

" search case-sensitivity
" Set ignorecase on
set ignorecase
set smartcase


" smart search (override 'ic' when pattern has uppers)
set scs


""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Formatting/Layout

""""""""""""""""""""""""""""""""""""""""""""""""""

set autoindent

" Set smart indenting
set smartindent

" Set tab spacing
set tabstop=4

set shiftwidth=4

" Show line and column number of cursor position
set ruler

set showcmd

set background=dark
syntax on
" colorscheme torte
colorscheme ir_black

" set background=dark
" colorscheme solarized

" set background=light
" colorscheme solarized

set linebreak
set spell spelllang=en_us
set enc=utf-8



" Turn on line numbering. Turn it off with "set nonu"
set nu


setlocal wrap linebreak nolist
set virtualedit=
setlocal display+=lastline

""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual Cues

""""""""""""""""""""""""""""""""""""""""""""""""""

" show matching brackets for a moment
set showmatch

" how many tenths of a second to blink matching brackets for
set matchtime=5

" do not highlight searched phrases
set nohlsearch

" but do highlight as you type you search phrase 
set incsearch

noremap  <buffer> <silent> k gk
"noremap  <buffer> <silent> gk k
noremap  <buffer> <silent> j gj
"noremap  <buffer> <silent> gj j
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$



noremap  <buffer> <silent> <Up>   gk
noremap  <buffer> <silent> <Down> gj
noremap  <buffer> <silent> <Home> g<Home>
noremap  <buffer> <silent> <End>  g<End>
inoremap <buffer> <silent> <Up>   <C-o>gk
inoremap <buffer> <silent> <Down> <C-o>gj
inoremap <buffer> <silent> <Home> <C-o>g<Home>
inoremap <buffer> <silent> <End>  <C-o>g<End>

:map <C-Right> <End>
:map <C-Left> <Home>
:map <C-Down> <PageDown>
:map <C-Up> <PageUp>

" Map space to search
map <space> /

"Use ;; to escape
inoremap ;; <Esc>

" Window splitting

nmap <silent> <leader>sh :leftabove vnew<cr>
nmap <silent> <leader>sl :rightbelow vnew<cr>
nmap <silent> <leader>sk :leftabove new<cr>
nmap <silent> <leader>sj :rightbelow new<cr>
nmap <silent> <leader>swh :topleft vnew<cr>
nmap <silent> <leader>swl :botright vnew<cr>
nmap <silent> <leader>swk :topleft new<cr>
nmap <silent> <leader>swj :botright new<cr>

" Scroll the window next to the current one
"   (especially useful for two-window split)
nmap <silent> <leader>j <c-w>w<c-d><c-w>W
nmap <silent> <leader>k <c-w>w<c-u><c-w>W

" Remap omni-completion to CTRL+SPACE
" inoremap <> <C-x><C-o>


" let g:miniBufExplMapWindowNavVim = 1 
" let g:miniBufExplMapWindowNavArrows = 1 
" let g:miniBufExplMapCTabSwitchBufs = 1 
" let g:miniBufExplModSelTarget = 1



" Markdown folding

" function! MarkdownLevel()
"     if getline(v:lnum) =~ '^# .*$'
"         return ">1"
"     endif
"     if getline(v:lnum) =~ '^## .*$'
"         return ">2"
"     endif
"     if getline(v:lnum) =~ '^### .*$'
"         return ">3"
"     endif
"     if getline(v:lnum) =~ '^#### .*$'
"         return ">4"
"     endif
"     if getline(v:lnum) =~ '^##### .*$'
"         return ">5"
"     endif
"     if getline(v:lnum) =~ '^###### .*$'
"         return ">6"
"     endif
"     return "=" 
" endfunction
" au BufEnter *.md setlocal foldexpr=MarkdownLevel()  
" au BufEnter *.md setlocal foldmethod=expr     


let g:Tex_BIBINPUTS="/Users/Randy/Dropbox/bibtex/randybib/"

augroup mkd

  autocmd BufRead *.md  set ai formatoptions=tcroqn2 comments=n:&gt;

augroup END

" Markdown Preview
map <leader>p :Mm<CR>

" Turn off LustyExplorer ruby warning
let g:LustyExplorerSuppressRubyWarning = 1

" NERDTree settings (launch with \nt or \\)
let g:NERDTreeQuitOnOpen = 1
nmap <silent> <leader>nt <Esc>:NERDTreeToggle<CR>
nmap <silent> <leader>\ <Esc>:NERDTreeToggle<CR>
 

:set hidden

let g:LatexBox_viewer = "skim"
let g:LatexBox_latexmk_options = "-pvc"

let g:PreviewBrowsers='safari,firefox'

