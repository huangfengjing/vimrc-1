set nocompatible
filetype off 

" Pathogen
execute pathogen#infect()

" -------------------------------------------------- 
" Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" General shit
Bundle 'Tagbar'
Bundle 'LustyJuggler'
Bundle 'Align'
Bundle 'Valloric/YouCompleteMe'
Bundle 'marijnh/tern_for_vim'
Bundle 'rking/ag.vim'
Bundle 'tacahiroy/ctrlp-funky'
Bundle 'SirVer/ultisnips'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'bling/vim-airline'
Bundle 'roman/golden-ratio'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

" Linting
Bundle 'scrooloose/syntastic'

" JS shit
Bundle 'einars/js-beautify'
Bundle 'JavaScript-Indent'
Bundle 'jelera/vim-javascript-syntax'

" Gist that B
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'

" Misc stuff copied from the internet
Bundle 'my-stuff'

" Color schemes
Bundle 'flazz/vim-colorschemes'
Bundle '29decibel/codeschool-vim-theme'

filetype plugin indent on

" -------------------------------------------------- 
" Vim settings
syntax enable
set background=dark
colorscheme chance-of-storm  
set guifont=Inconsolata\ For\ Powerline:h18
set number
set guioptions-=L

" Searching configs
set incsearch
set ignorecase
set smartcase 

" dat menu
set wildmenu

" dont pop up preview window, ycm is enough
set completeopt-=preview

" use sysetm clipboard on mac
set clipboard=unnamed

" 2 spaces to a tab, spaces as tab
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set shiftround
set autoindent
set copyindent
set smarttab
set smartindent

" -------------------------------------------------- 
" Plugin settings

" ctrlp
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|node_modules\|bin\|dist\|bower_components',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_extensions = ['funky']
let g:airline_powerline_fonts=1

let NERDTreeQuitOnOpen = 0

" ultisnips - custom trigger button
let g:UltiSnipsSnippetDirectories=["snips"]
let g:UltiSnipsExpandTrigger="<c-j>"

let g:gist_open_browser_after_post = 1

" let syntastic clobber location list
let g:syntastic_always_populate_loc_list=1

" -------------------------------------------------- 
" My mappings

" fast edits
nmap <silent> <leader>g :e ~/.gvimrc<CR>
nmap <silent> <leader>v :e ~/.vimrc<CR>

" Remove align maps scrit as to not super pollute leader keys
if exists(":AlignMapsClean")
  AlignMapsClean
endif

" Align stuff
vmap AA :Align =<CR>
vmap Ap :Align =><CR>
vmap Aa :Align :<CR>

" change switching windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Nerd tree and tag list
nmap <silent> <leader>t :NERDTreeToggle<CR>

" CtrlP Funky ya ass
nmap <silent> <leader>f :CtrlPFunky<CR>

" remove training wheels
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

