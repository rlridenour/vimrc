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
Bundle 'nelstrom/vim-markdown-preview'
Bundle 'altercation/vim-colors-solarized'
Bundle 'hsitz/VimOrganizer'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-surround'
Bundle 'tomtom/tcomment_vim'
Bundle 'shemerey/vim-peepopen'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" vim-scripts repos
Bundle 'LaTeX-Box'
Bundle 'Markdown'
Bundle 'calendar.vim--Matsumoto'
" Bundle 'L9'
" Bundle 'FuzzyFinder'
" Bundle 'rails.vim'
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
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

" call pathogen#runtime_append_all_bundles() 
" call pathogen#helptags()

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

" Disable modelines
set modelines=0

set scrolloff=3
set showmode
set wildmenu
set wildmode=list:longest,full
set cursorline
set ttyfast
set relativenumber
set undofile
set visualbell "don't beep

" Save when focus is lost
au FocusLost * :wa


let mapleader = ","

" Edit vimrc with leader-ev
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" Peepopen map to command-t

" if has("gui_macvim")
"   macmenu &File.New\ Tab key=<nop>
"   map <D-t> <Plug>PeepOpen
" end

""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching

""""""""""""""""""""""""""""""""""""""""""""""""""

" search case-sensitivity
" Set ignorecase on
set ignorecase
set smartcase


" smart search (override 'ic' when pattern has uppers)
set scs

" Leader-space to clear highlighted search terms
nnoremap <leader><space> :noh<cr>
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
set hlsearch

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

"Use jj to escape
inoremap jj <Esc>

nnoremap ; :


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
map <leader>mp :Mm<CR>

"Multimarkdown

"Multimarkdown to HTML  
nmap <leader>mmd :%!/usr/local/bin/mmd <cr>  
</cr></leader> 


"Multimarkdown to LaTeX  
nmap <leader>mtex :%!/usr/local/bin/mmd2tex <cr>  
</cr></leader> 


"Multimarkdown to LaTeX  
nmap <leader>modf :%!/usr/local/bin/mmd2odf <cr>  
</cr></leader> 


" Turn off LustyExplorer ruby warning
let g:LustyExplorerSuppressRubyWarning = 1

" NERDTree settings (launch with \nt or \\)
let g:NERDTreeQuitOnOpen = 1
nmap <silent> <leader>nt <Esc>:NERDTreeToggle<CR>
nmap <silent> <leader>, <Esc>:NERDTreeToggle<CR>
 

:set hidden

let g:LatexBox_viewer = "skim"
let g:LatexBox_latexmk_options = "-pvc"

let g:PreviewBrowsers='safari,firefox'


" stuff below here is necessary for VimOrganizer to work right
filetype plugin indent on
" use this colorscheme or integrate it into an existing colorscheme
" colorscheme org_dark

" It is (or will be) helpful to see eol characters when using
" VimOrganizer, since lines ending with a space are treated
" as having soft returns, lines ending with non-space have 
" hard returns
" set list
" set listchars=tab:�\ ,eol:�
" guioption -L removes left scrollbar, which is especially 
" irritating when split vertical windows appear in VimOrganizer
set guioptions-=L
" g:org_agenda_dirs specify directories that, along with 
" their subtrees, are searched for list of .org files when
" accessing EditAgendaFiles().  Specify your own here, otherwise
" default will be for g:org_agenda_dirs to hold single
" directory which is directory of the first .org file opened
" in current Vim instance:
" Below is line I use in my Windows install:
"let g:org_agenda_dirs=["c:/users/herbert/documents/my\ dropbox","c:/users/herbert/desktop"]

" vars below are used to define default Todo list and
" default Tag list.  Will be changed in near future so
" that these are defined by config lines in each .org
" file itself, but now these are where you can change things:
let g:org_todo_setup='TODO | DONE'
" while g:org_tag_setup is itself a string
let g:org_tag_setup='{@home(h) @work(w) @tennisclub(t)} \n {easy(e) hard(d)} \n {computer(c) phone(p)}'

" leave these as is:
au! BufRead,BufWrite,BufWritePost,BufNewFile *.org 
au BufRead,BufNewFile *.org            call org#SetOrgFileType()
au BufRead *.org :PreLoadTags
au BufWrite *.org :PreWriteTags
au BufWritePost *.org :PostWriteTags

" below are two examples of Org-mode "hook" functions
" These present opportunities for end-user customization
" of how VimOrganizer works.  For more info see the 
" documentation for hooks in Emacs' Org-mode documentation:
" http://orgmode.org/worg/org-configs/org-hooks.php#sec-1_40

" These two hooks are currently the only ones enabled in 
" the VimOrganizer codebase, but they are easy to add so if
" there's a particular hook you want go ahead and request it
" or look for where these hooks are implemented in 
" /ftplugin/org.vim and use them as example for placing your
" own hooks in VimOrganizer:
function! Org_property_changed_functions(line,key, val)
        "call confirm("prop changed: ".a:line."--key:".a:key." val:".a:val)
endfunction
function! Org_after_todo_state_change_hook(line,state1, state2)
        "call ConfirmDrawer("LOGBOOK")
        "let str = ": - State: " . Pad(a:state2,10) . "   from: " . Pad(a:state1,10) .
        "            \ '    [' . Timestamp() . ']'
        "call append(line("."), repeat(' ',len(matchstr(getline(line(".")),'^\s*'))) . str)
        
endfunction





