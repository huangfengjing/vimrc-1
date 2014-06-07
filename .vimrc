set nocompatible
filetype off 

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
Bundle 'rbgrouleff/bclose.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'bling/vim-airline'
Bundle 'elzr/vim-json'
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

syntax on
colorscheme chance-of-storm
set background=dark
set guifont=Inconsolata\ For\ Powerline:h18
set guioptions-=L

" Searching configs
set incsearch
set ignorecase
set smartcase 

" dat menu
set wildmenu

" misc
set number
set showmatch
set showmode
set scrolloff=1000
set incsearch
set ignorecase
set smartcase
set hidden

" dont pop up preview window, ycm is enough
set completeopt-=preview

" backspace stuff
set backspace=indent,eol,start

" use system clipboard on mac
set clipboard=unnamed

" assign json files correct filetype
au BufRead,BufNewFile *.json set filetype=json

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

" lol backups
set nobackup
set noswapfile

" show position
set ruler

" -------------------------------------------------- 
" Plugin settings

" ycm completion
let g:ycm_add_preview_to_completeopt=1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion=1

" ctrlp
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|node_modules\|bin\|dist\|bower_components',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" ctrlp extensions
let g:ctrlp_extensions = ['funky']

" airline / powerline 
let g:airline_powerline_fonts=1

" ultisnips - custom trigger button
let g:UltiSnipsSnippetDirectories=["snips"]
let g:UltiSnipsExpandTrigger="<c-j>"

" Open new gists in browser
let g:gist_open_browser_after_post = 1

" let syntastic clobber location list
let g:syntastic_always_populate_loc_list=1

" no concealing json quotes
let g:vim_json_syntax_conceal = 0

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

" Lusty juggler 
nmap <silent> <leader>d :LustyJuggler<CR>

" Buffer
nmap <silent> <leader>q :Bclose<CR>

" Nerd tree and tag list
nmap <silent> <leader>t :NERDTreeToggle<CR>

" CtrlP funky ya ass
nmap <silent> <leader>f :CtrlPFunky<CR>

" remove training wheels
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

