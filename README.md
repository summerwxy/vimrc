vimrc
=====

Install
-------
```
cd <VIM_HOME>
git clone https://github.com/summerwxy/vimrc.git
-- move all files in vimrc folder to <VIM_HOME>
git reset --hard HEAD
git submodule update --init
```


Plugins
-------
* nerdtree
* AutoClose
* xmledit 
  - 要記得要複製 ftplugin 裡面的檔案 變成 html.vim, htm.vim, gsp.vim...
* snipMate
* Zen Coding
* AutoComplPop

  To enable auto-popup for this completion, add following function to
  plugin/snipMate.vim:
  ```
    fun! GetSnipsInCurrentScope()
      let snips = {}
      for scope in [bufnr('%')] + split(&ft, '\.') + ['_']
        call extend(snips, get(s:snippets, scope, {}), 'keep')
        call extend(snips, get(s:multi_snips, scope, {}), 'keep')
      endfor
     return snips
    endf
  ```
* vimwiki
* Matrix Screensaver
* ColorSelector
 - :SelectColorS    
 - C-n, C-p, C-q
* css color
* fugitive
* ctrlp
* dbext

* F8 顯示/切換 工具列, 功能列
* F9 Martix Screensaver
* F10 bar 
* F11 nerdtree

