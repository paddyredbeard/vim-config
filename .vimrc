" ===================================
" s.py .vimrc config
" contact: py.stephane1(at)gmail.com
" ===================================

syntax on                 " syntax highlighing
filetype on               " try to detect filetypes
filetype plugin on        " enable loading indent file for filetype
filetype indent on        " enable loading indent file for filetype

set rtp+=~/.vim/bundle/vundle
set rtp+=/usr/local/opt/fzf

call vundle#rc()

if filereadable(expand("~/.vimrc.local.before"))
    source ~/.vimrc.local.before
endif

if filereadable(expand("~/.vimrc.bundle"))
    source ~/.vimrc.bundle
else
    source ~/.vim/vimrc.bundle
endif

" ===================================
" Configuration
" ===================================

set cursorline
set encoding=utf-8
set clipboard=unnamed

set nocompatible
set laststatus=2               " Always show the statusline
set nobackup                   " delete backup
set noswapfile
set backspace=indent,eol,start " allow backspacing over everything in insert mode

set autoindent                 " always set autoindenting on
set copyindent                 " copy the previous indentation on autoindenting"
set history=50                 " keep 50 lines of command line history
set ruler                      " show the cursor position all the time
set showcmd                    " display incomplete commands
set incsearch                  " do incremental searching
set novisualbell               " turn off visual bell
set vb t_vb=".
set title                      " show title in console title bar
set ttyfast                    " smoother changes

set expandtab
set shiftround                 " use multiple of shiftwidth when indenting with '<' and '>'"
set shiftwidth=2               " nombre d'espace apres un '>>'
set tabstop=2                  " nombre de place que prend une tabulation
set hlsearch
"set ignorecase                 " ignore case when searching
set smarttab
set hidden
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set list

"colorscheme badwolf
"colorscheme comrade
"colorscheme dogbreath2
"colorscheme dogbreath
colorscheme gruvbox
set bg=dark
"colorscheme mirkwood
"colorscheme molokai
"colorscheme mordor
"colorscheme vividchalk

let g:airline_theme='badwolf'

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" phpunit compilation
com! -nargs=* Phpunit make -c app <q-args> | cw

" ===================================
" Autocommands
" ===================================

"delete spaces at end of line
autocmd BufWritePre !*.xml silent! %s/[\r \t]\+$//
" retab to replace tab by space when you write
autocmd BufWritePre *.php :set et|retab

autocmd BufNewFile,BufRead *.twig set filetype=twig
autocmd BufNewFile,BufRead *.less set filetype=less
autocmd BufNewFile,BufRead *.html.twig set filetype=html.twig

" ===================================
" Bundles configuration
" ===================================

let g:pdv_cfg_php4always=0 "using php5 doc tags
let g:symfony_enable_shell_mapping = 1

set sessionoptions=blank,buffers,curdir,folds,tabpages,winsize

" you can override it if you want a fileexplorer
" by default when opening vim on dir
if !exists("g:file_exporer_at_startup")
    let g:NERDTreeHijackNetrw=0

    " use 'vim' in your directory and it'll open a nerdtree automatically
    autocmd vimenter * if !argc() || argv() == ['.'] | NERDTree | endif

    " Disable netrw's autocmd, since we're ALWAYS using NERDTree
    runtime plugin/netRwPlugin.vim
    augroup FileExplorer
      au!
    augroup END
endif

let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['php'] = 'php,symfony2'

" ===================================
" Mapping
" ===================================

imap <buffer> <leader>ns <C-O>:call PhpInsertUse()<CR>
map <buffer> <leader>ns :call PhpInsertUse()<CR>

nmap <Space> <PageDown>

nmap <leader>sl :SessionList<CR>
nmap <leader>ss :SessionSave<CR>

map <leader>y :NERDTreeToggle<CR>
map <leader>i :TlistToggle<CR>
map <leader>f :Ack
map <leader>te :Phpunit %<CR>

" This will align params by using align vim bundle
nmap <leader>d :call PhpDocSingle()<CR><ESC>jv/\/<CR>kkk<leader>tsp<CR>
vnoremap <leader>d :call PhpDocRange()<CR>

" mapping ctags shortcut to t
nmap <leader>tj :tjump<CR>
nmap <leader>tp :tprevious<CR>
nmap <leader>tn :tnext<CR>
nnoremap <leader><space> :noh<cr>
"map <C-l> <C-]> " If you use mac, uncomment it.

imap <leader>ns <C-O>:call PhpInsertUse()<CR>
map <leader>ns :call PhpInsertUse()<CR>

imap <leader>ne <C-O>:call PhpExpandClass()<CR>
map <leader>ne :call PhpExpandClass()<CR>

nmap <leader>gst :Gstatus<CR>
nmap <leader>gco :Gread<CR>
nmap <leader>gbl :Gblame<CR>
nmap <leader>gbr :Gbrowse<CR>

" Because there is a bundle which deactive it ...
map <leader>e :set expandtab<CR>
" If you don't want to have validation
map <leader>s :SyntasticToggleMode<CR>
" Useful to toggle paste mode"
set pastetoggle=<leader>p
set tags+=vendor.tags


""""""""""""""""""""
" GnuPG Extensions "
""""""""""""""""""""
" Tell the GnuPG plugin to armor new files.
let g:GPGPreferArmor=1

" Tell the GnuPG plugin to sign new files.
let g:GPGPreferSign=1

augroup GnuPGExtra
    " Set extra file options.
    autocmd BufReadCmd,FileReadCmd *.\(gpg\|asc\|pgp\) call SetGPGOptions()

    " Automatically close unmodified files after inactivity.
    autocmd CursorHold *.\(gpg\|asc\|pgp\) quit
augroup END

function SetGPGOptions()
    " Set updatetime to 1 minute.
    set updatetime=60000

    " Fold at markers.
    set foldmethod=marker

    " Automatically close all folds.
    set foldclose=all

    " Only open folds with insert commands.
    set foldopen=insert
endfunction


""""""""""""""""
" local stuff  "
""""""""""""""""
if filereadable(expand("~/.vimrc.local.after"))
    source ~/.vimrc.local.after
endif

let $FZF_DEFAULT_COMMAND = 'find . -type f | grep -v "cache/" | grep -v "\.git/" | grep -v "\.mat$"'
nnoremap <silent> <C-P> :FZF -x<CR>

set foldmethod=marker
