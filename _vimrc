set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

" ===== Start of Vundle =====
filetype off                        " required!
" set rtp+=~/.vim/bundle/vundle/
set rtp+=vimfiles/bundle/vundle/
call vundle#rc()


" let Vundle manage Vundle required!
Bundle 'gmarik/vundle'              

" --- AutoComplPop ---
"  TODO: 還必須在 snipmate.vim 加上一小段 code
Bundle 'AutoComplPop'
let g:acp_behaviorSnipmateLength = 1

" --- coffee script ---
Bundle 'kchmck/vim-coffee-script'
au BufWritePost *.coffee silent make! | redraw!

" --- color selector ---
Bundle 'c9s/colorselector.vim'

" --- css color ---
Bundle 'ap/vim-css-color'

" --- ctrlp ---
Bundle 'kien/ctrlp.vim'

" --- dbext ---
Bundle 'dbext.vim'
" dbext 連線設定
" Any number of profiles (connections) can be configured using this basic format:
"   let g:dbext_default_profile_<profile_name> = '<connection string>'
" Microsoft SQL Server
let g:dbext_default_profile_SQLSRV = 'type=SQLSRV:user=sa:passwd=123456_abc:srvname=192.168.0.18:dbname=iwill:replace_title=1'
" SQLite
let g:dbext_default_profile_sqlite_for_taifex_at_iwill = 'type=SQLITE:dbname=taifex.db'

" --- emmet: old name "zen coding" ---
Bundle 'mattn/emmet-vim'


" --- evervim ---
Bundle 'kakkyz81/evervim'
let g:evervim_devtoken='S=s8:U=d5cbc:E=148731dab28:C=1411b6c7f2e:P=1cd:A=en-devtoken:V=2:H=6a90839a09e93e09fde77a07e44fffa9'
nmap <F9> :NERDTreeClose<CR>:EvervimNotebookList<CR>

" --- fugitive ---
Bundle 'tpope/vim-fugitive'

" --- gundo: F12 toggle ---
Bundle 'sjl/gundo.vim'
nnoremap <F12> :GundoToggle<CR>

" --- indentLine ---
Bundle 'Yggdroot/indentLine'

" --- Matrix Screensaver ---
Bundle 'uguu-org/vim-matrix-screensaver'
nmap <F8> :NERDTreeClose<CR>:MBEClose<CR>:Matrix<CR>

" --- minibufexpl.vim: F10 toggle ---
Bundle 'fholgado/minibufexpl.vim'
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 
map <F10> :MBEToggle<CR>

" --- multiple cursors ---
Bundle 'terryma/vim-multiple-cursors'

" --- NERD tree: F11 toggle ---
Bundle 'scrooloose/nerdtree'
autocmd vimenter * if !argc() | NERDTree | endif
nmap <F11> :NERDTreeToggle<CR>
let NERDTreeIgnore=['.pyc$', '\~$']

" --- powerline ---
Bundle 'Lokaltog/vim-powerline'
set laststatus=2

" --- snipmate ---
Bundle 'ervandew/snipmate.vim'

" --- supertab ---
Bundle 'ervandew/supertab'

" --- surround ---
Bundle 'tpope/vim-surround'

" --- tabular ---
Bundle 'godlygeek/tabular'

" --- vimwiki ---
Bundle 'vimwiki'
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.mkd': 'markdown', '.wiki': 'media'}

" --- xmledit ---
Bundle 'sukima/xmledit'

" --- xptemplate ---
Bundle 'drmingdrmer/xptemplate'



" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
" ===== End of Vundle =====


" 0_o's Settings
let mapleader = ","
set t_Co=256
syntax on
" filetype on			        " enables filetype detection
filetype plugin on
filetype plugin indent on	" enables filetype specific plugins
colors inkpot 			    " colors
set nowrap
set number
" set number in insert mode / set relative number in normal mode
"autocmd InsertEnter * set number
"autocmd InsertLeave * set relativenumber
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smartindent
set cindent
set autoindent
set history=50
set smarttab
set incsearch
set selectmode=mouse
set nobackup                    " no backup files


set termencoding=utf-8
set encoding=utf-8
set fileencodings=utf-8,taiwan,chinese,latin-1
" 解決 console 輸出亂碼 zh_TW.UTF-8, en_US.UTF-8
language messages zh_TW.utf-8   " set the language of the message / ui (vim)
set langmenu=zh_TW.UTF-8        " sets the language of the menu (gvim)
" 解決 menu 亂碼, 必須放在 set langmenu 底下, set langmenu 才會有效果
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim



" #1F-LVqua (Editor) [ptt.cc] 
" load templates by file type
au BufNewFile *.py 0r $VIMRUNTIME/../vimfiles/templates/py.tpl  
" http://vim.runpaint.org/typing/using-templates/ 設定有點問題先註解掉
" Jump between %VAR% placeholders in Normal mode with <Ctrl-p>
" nnoremap <c-p> /%\u.\{-1,}%<cr>c/%/e<cr>
" Jump between %VAR% placeholders in Insert mode with <Ctrl-p>
" inoremap <c-p> <ESC>/%\u.\{-1,}%<cr>c/%/e<cr>



" F7 顯示/隱藏 gvim 工具列與功能列
map <silent> <F7> :if &guioptions =~# 'T' <Bar>
\set guioptions-=T <Bar>
\set guioptions-=m <Bar>
\else <Bar>
\set guioptions+=T <Bar>
\set guioptions+=m <Bar>
\endif<CR>



au BufNewFile,BufRead *.py map <F2> <Esc>:w<CR>:!python "%"<CR>
au BufNewFile,BufRead *.py imap <F2> <Esc>:w<CR>:!python "%"<CR>
au FileType python setl shiftwidth=2 softtabstop=2 tabstop=2
au FileType AutoHotkey setl shiftwidth=2 softtabstop=2 tabstop=2
    

au BufNewFile,BufRead *.js map <F2> <Esc>:w<CR>:!node "%"<CR>
au BufNewFile,BufRead *.js imap <F2> <Esc>:w<CR>:!node "%"<CR>


" set *.tpl filetype = html for snipmate
au BufNewFile,BufRead *.tpl set filetype=html

