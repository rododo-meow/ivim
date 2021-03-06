"
" dotphiles : https://github.com/dotphiles/dotphiles
"
" Setup vim and load required plugins before dotvim
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

if filereadable('/usr/local/share/gtags/gtags.vim')
  source /usr/local/share/gtags/gtags.vim
endif

" Call dotvim
source ~/ivim/dotvim.vim

if has("user_commands")
  set nocompatible
  filetype off
  set rtp+=~/ivim/bundle/Vundle.vim/
  let g:vundles=['general', 'git', 'programming', 'completion', 'misc']
  " Load 'vundles'
  source ~/ivim/vundles.vim
  " Add extra bundles here...
  " Bundle 'reponame'
endif

" Customize to your needs...

colorscheme molokai

" Key map for viewport
"nnoremap <C-w> <C-w>c
nnoremap <C-n> :vsplit<CR>
nnoremap <C-Right> <C-w>l
nnoremap <C-Left> <C-w>h
nnoremap <C-Up> <C-w>k
nnoremap <C-Down> <C-w>j

" Key map for buffer
nnoremap <M-n> :enew<CR>
nnoremap <M-1> :b<Space>1<CR>
nnoremap <M-2> :b<Space>2<CR>
nnoremap <M-3> :b<Space>3<CR>
nnoremap <M-4> :b<Space>4<CR>
nnoremap <M-5> :b<Space>5<CR>
nnoremap <M-Left> :bp<CR>
nnoremap <M-Right> :bn<CR>
nnoremap <M-w> :bd<CR>
nnoremap <A-n> :enew<CR>
nnoremap <A-1> :b<Space>1<CR>
nnoremap <A-2> :b<Space>2<CR>
nnoremap <A-3> :b<Space>3<CR>
nnoremap <A-4> :b<Space>4<CR>
nnoremap <A-5> :b<Space>5<CR>
nnoremap <A-Left> :bp<CR>
nnoremap <A-Right> :bn<CR>
nnoremap <A-w> :bd<CR>

" ex-project
nnoremap <C-e> :EXProject<CR><leader>R<leader>fc
nnoremap <F5> <leader>r

" YouCompleteMe
imap <C-_> <C-Space>
let g:ycm_filetype_whitelist = { 'cpp': 1, 'c': 1, 'python': 1, 'asm': 1, 'sh': 1, 'zsh': 1 }

" airline
set laststatus=2
set statusline=%F
let g:airline_left_sep='>'
let g:airline_right_sep='<'
"let g:airline_detect_modified=1
"let g:airline_detect_paste=1
let g:airline_powerline_fonts = 1
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 11
let g:airline_theme='airlineish'
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline#extensions#tavline#enabled = 0
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#left_sep = '|'
let g:airline_theme="luna"

" Search
set incsearch
set ignorecase
set smartcase
nnoremap <F3> n

" ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.a,*.o,.svn,.git,*.svn-base
let g:ctrlp_match_func = { 'match' : 'pymatcher#PyMatch' }
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_max_files = 0
if executable("ag")
	set grepprg=ag\ --nogroup\ --nocolor
	let g:ctrlp_user_command = 'ag %s -l --nocolor --nogroup --ignore ''.git'' --ignore ''.DS_Store'' --ignore ''node_modules'' --ignore ''.svn'' --ignore ''*.swp'' --hidden -g ""'
endif
let g:ctrlp_working_path_mode = 'ra'

" gtags
nnoremap <C-]> :GtagsCursor<cr>
nnoremap <D-]> :GtagsCursor<cr>
let g:Gtags_Result="ctags-x"
let g:Gtags_Efm="%*\\S%*\\s%l%\\s%f%\\s%m"
let g:Gtags_Auto_Update=1
let g:Gtags_No_Auto_Jump=1
let switchbuf="useopen"

" ocp-indent
au FileType ocaml setlocal expandtab

" markdown-preview
let g:mkdp_path_to_chrome = "google-chrome-unstable"
let g:mkdp_auto_start = 1
let g:mkdp_auto_open = 1
let g:mkdp_auto_close = 1

" dotvim
let g:dotvim_colorscheme = "molokai"

" localvimrc
let g:localvimrc_ask = 0
