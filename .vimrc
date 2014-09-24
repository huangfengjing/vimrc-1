set nocompatible
filetype off

" --------------------------------------------------
" Vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'gmarik/vundle'

" Buffer Management
Plugin 'scrooloose/nerdtree'
Plugin 'LustyJuggler'
Plugin 'rbgrouleff/bclose.vim'

" Searching
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'

" Syntax
Plugin 'jelera/vim-javascript-syntax'
Plugin 'elzr/vim-json'
Plugin 'groenewege/vim-less'
Plugin 'mustache/vim-mustache-handlebars'

" Formatting
Plugin 'Align'
Plugin 'einars/js-beautify'
Plugin 'JavaScript-Indent'
Plugin 'Raimondi/delimitMate'

" Linting
Plugin 'scrooloose/syntastic'

" Status
Plugin 'bling/vim-airline'

" Autocomplete
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'

" Shorthand
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'SirVer/ultisnips'
Plugin 'my-stuff'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'

" Color schemes
Plugin 'flazz/vim-colorschemes'
Plugin '29decibel/codeschool-vim-theme'

filetype plugin indent on

" --------------------------------------------------
" Vim settings

syntax on
colorscheme chance-of-storm
set guifont=Inconsolata\ For\ Powerline:h20
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

" delimit
let g:delimitMate_expand_space = 1
let g:delimitMate_expand_cr = 1

" airline / powerline
let g:airline_powerline_fonts=1
let g:airline_theme="powerlineish"

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
nmap <silent> <leader>v :e ~/.vimrc<CR>

" Tern stuff
nmap <silent> <leader>j :TernDef<CR>
nmap <silent> <c-s> :TernType<CR>

" Remove align maps scrit as to not super pollute leader keys
if exists(":AlignMapsClean")
  AlignMapsClean
endif

" clean up shit
nmap <silent> <leader>rt :retab \| %s/\s\+$//<CR>

" Align stuff
vmap AA :Align =<CR>
vmap Ap :Align =><CR>
vmap Aa :Align :<CR>
vmap A, :Align ,<CR>

" change switching windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" delete without yank
nnoremap <leader>w "_d
vnoremap <leader>w "_d

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

" Remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
