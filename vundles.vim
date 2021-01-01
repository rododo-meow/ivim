"
" dotphiles : https://github.com/dotphiles/dotphiles
"
" Essential vim plugins!
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

call vundle#begin()

" Vundle itself
Plugin 'VundleVim/Vundle.vim'

" General
if count(g:vundles, 'general')
  Plugin 'upsuper/vim-colorschemes'
  " Plugin 'scrooloose/nerdtree'
  " Plugin 'chriskempson/base16-vim'
  Plugin 'YankRing.vim'
  let g:yankring_history_dir = $HOME.'/ivim/'
  let g:yankring_history_file = '.yankring_history'
  ""Plugin 'tpope/vim-repeat'
  ""Plugin 'AutoClose'
  Plugin 'ctrlpvim/ctrlp.vim'
  Plugin 'FelikZ/ctrlp-py-matcher'
  Plugin 'jistr/vim-nerdtree-tabs'
  " Plugin 'sudo.vim'
  Plugin 'bronson/vim-trailing-whitespace'
  " Plugin 'mbbill/undotree'
  Plugin 'mhinz/vim-signify'
  " Plugin 'Raimondi/delimitMate'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  " Plugin 'rodjek/vim-puppet'
  Plugin 'minibufexpl.vim'
endif

if count(g:vundles, 'git')
  if executable('git')
    Plugin 'tpope/vim-fugitive'
  endif
endif

if count(g:vundles, 'hg')
 if executable('hg')
    Plugin 'k-takata/hg-vim'
  endif
endif

" General Programming
if count(g:vundles, 'programming')
  Plugin 'godlygeek/tabular'
  if executable('ack')
    Plugin 'mileszs/ack.vim'
  endif
  if v:version > 700
    " Plugin 'scrooloose/syntastic'
    if executable('ctags')
      " Plugin 'majutsushi/tagbar'
    endif
  endif
endif

if count(g:vundles, 'completion')
  " Plugin 'Shougo/neocomplcache'
  " Plugin 'Shougo/neosnippet'
  " Plugin 'Shougo/neosnippet-snippets'
  " Plugin 'scrooloose/snipmate-snippets'
  " Plugin 'honza/vim-snippets'
  " Plugin 'Indent-Guides'
  Plugin 'Valloric/YouCompleteMe'
endif

" PHP
if count(g:vundles, 'php')
  Plugin 'spf13/PIV'
endif

" Python
if count(g:vundles, 'python')
  Plugin 'hynek/vim-python-pep8-indent'
  let g:syntastic_python_flake8_args='--ignore=E501'
endif

" Javascript
if count(g:vundles, 'javascript')
  Plugin 'leshill/vim-json'
  Plugin 'groenewege/vim-less'
  Plugin 'taxilian/vim-web-indent'
endif

" HTML
if count(g:vundles, 'html')
  Bundle 'HTML-AutoCloseTag'
  Bundle 'hail2u/vim-css3-syntax'
  Bundle 'juvenn/mustache.vim'
endif

" Ruby
if count(g:vundles, 'ruby')
  Plugin 'tpope/vim-rails'
endif

" Misc
if count(g:vundles, 'misc')
  " Plugin 'tpope/vim-markdown'
  Plugin 'iamcco/markdown-preview.vim'
  " Plugin 'spf13/vim-preview'
  " Plugin 'tpope/vim-cucumber'
  " Plugin 'markcornick/vim-vagrant'
  " Plugin 'Puppet-Syntax-Highlighting'
  " Plugin 'ekalinin/Dockerfile.vim'
  if v:version > 701
    " Plugin 'zhaocai/GoldenView.Vim'
  endif
  let g:goldenview__enable_default_mapping=0
endif

Plugin 'embear/vim-localvimrc'

call vundle#end()
