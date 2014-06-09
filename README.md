# .vimrc

Solid Vim configuration for JavaScript development. Includes all the goodies like [ctrlp](https://github.com/kien/ctrlp.vim), [ag.vim](https://github.com/rking/ag.vim), [LustyJuggler](https://github.com/vim-scripts/LustyJuggler), and [YouCompleteMe](https://github.com/Valloric/YouCompleteMe).

## Installation
```
git clone https://github.com/zakangelle/vimrc.git
cp vimrc/.vimrc ~/.vimrc
```

Install bundles from within Vim with `:BundleInstall`

## Requires
+ [Homebrew](http://brew.sh/) or standalone [CMake](http://www.cmake.org/cmake/resources/software.html) (required by YCM)
+ [NodeJS](https://github.com/joyent/node)
+ [Vundle](https://github.com/gmarik/Vundle.vim)
+ [jshint](https://www.npmjs.org/package/jshint)
+ [Inconsolata for Powerline font](https://github.com/Lokaltog/powerline-fonts/tree/master/Inconsolata)

## Bundles

### Buffer Management
+ [NERDTree](https://github.com/scrooloose/nerdtree)
+ [LustyJuggler](https://github.com/vim-scripts/LustyJuggler)
+ [bclose](https://github.com/rbgrouleff/bclose.vim)

### Searching
+ [ag.vim (aka the_silver_searcher)](https://github.com/rking/ag.vim)
+ [ctrlp](https://github.com/kien/ctrlp.vim)
+ [ctrlp-funky](https://github.com/tacahiroy/ctrlp-funky)
+ [tern_for_vim](https://github.com/marijnh/tern_for_vim)

### Syntax
+ [vim-javascript-syntax](https://github.com/jelera/vim-javascript-syntax)
+ [vim-json](https://github.com/elzr/vim-json)

### Formatting
+ [Align](https://github.com/vim-scripts/Align)
+ [js-beautify](https://github.com/einars/js-beautify)
+ [Javascript-Indent](https://github.com/pangloss/vim-javascript)

### Linting
+ [syntastic](https://github.com/scrooloose/syntastic)

### Status
+ [Tagbar](https://github.com/majutsushi/tagbar)
+ [vim-airline](https://github.com/bling/vim-airline)

### Shorthand
+ [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
+ [sparkup](https://github.com/rstacruz/sparkup)
+ [ultisnips](https://github.com/SirVer/ultisnips)
+ [my-stuff](https://github.com/zakangelle/my-stuff)

### Git
+ [vim-fugitive](https://github.com/tpope/vim-fugitive)
+ [webapi-vim](https://github.com/mattn/webapi-vim)
+ [gist-vim](https://github.com/mattn/gist-vim)

### Color Schemes
+ [vim-colorschemes](https://github.com/flazz/vim-colorschemes)
+ [codeschool-vim-theme](https://github.com/29decibel/codeschool-vim-theme)

## Notes
[YouCompleteMe](https://github.com/Valloric/YouCompleteMe) needs to be compiled after installation:

```
cd ~/.vim/bundle/YouCompleteMe && ./install.sh
```

[tern_for_vim](https://github.com/marijnh/tern_for_vim) needs an `npm install`:

```
cd ~/.vim/bundle/tern_for_vim && npm install
```
