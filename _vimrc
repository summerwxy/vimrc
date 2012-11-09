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

" call Pathogen.vim
call pathogen#infect()

" 0_o's Settings
let mapleader = ","
set t_Co=256
syntax on
filetype on			        " enables filetype detection
filetype plugin indent on	" enables filetype specific plugins
colors inkpot 			    " colors
set nowrap
set relativenumber
autocmd InsertEnter * set number
autocmd InsertLeave * set relativenumber
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
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


" NERD tree: F11 toggle
autocmd vimenter * if !argc() | NERDTree | endif
nmap <F11> :NERDTreeToggle<CR>
let NERDTreeIgnore=['.pyc$', '\~$']

" minibufexpl.vim: F10 toggle
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 
map <F10> :TMiniBufExplorer<CR>

" AutoComplPop
let g:acp_behaviorSnipmateLength = 1

" Matrix Screensaver
nmap <F9> :NERDTreeClose<CR>:CMiniBufExplorer<CR>:Matrix<CR>

" #1F-LVqua (Editor) [ptt.cc] 
" load templates by file type
au BufNewFile *.py 0r $VIMRUNTIME/../vimfiles/templates/py.tpl  
" http://vim.runpaint.org/typing/using-templates/ 設定有點問題先註解掉
" Jump between %VAR% placeholders in Normal mode with <Ctrl-p>
" nnoremap <c-p> /%\u.\{-1,}%<cr>c/%/e<cr>
" Jump between %VAR% placeholders in Insert mode with <Ctrl-p>
" inoremap <c-p> <ESC>/%\u.\{-1,}%<cr>c/%/e<cr>


" Powerline
set laststatus=2


" F8 顯示/隱藏 gvim 工具列與功能列
map <silent> <F8> :if &guioptions =~# 'T' <Bar>
\set guioptions-=T <Bar>
\set guioptions-=m <Bar>
\else <Bar>
\set guioptions+=T <Bar>
\set guioptions+=m <Bar>
\endif<CR>


" dbext
" Any number of profiles (connections) can be configured using this basic format:
"   let g:dbext_default_profile_<profile_name> = '<connection string>'
" Microsoft SQL Server
let g:dbext_default_profile_SQLSRV = 'type=SQLSRV:user=sa:passwd=123456_abc:srvname=192.168.0.18:dbname=iwill:replace_title=1'
 

