0_o's vimrc files
==================

Install
-------
```
cd <VIM_HOME>
git clone https://github.com/summerwxy/vimrc.git
-- move all files in vimrc folder to <VIM_HOME>
git reset --hard HEAD
git submodule update --init
```

Install New Plugin
------------------
```
git submodule add http://github.com/path/the-plugins.git vimfiles/bundle/plugin-name
```

Update Plugins
--------------
```
update and pull all submodules
$ git submodule foreach git checkout master
$ git submodule foreach git pull

commit update
$ git commit -a -m "update submodules"
```

Remove Plugin
-------------
```
1. Remove it from .gitmodules
2. Remove it from .git/config
3. Run git rm --cached vimfiles\bundle\module-name
```


Plugins
-------
* AutoClose
    - 包含 ( [ { " ' 這五項符號會自動補成一對
    - TOINSTALL: 还要安装surround比较顺手
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

* ColorSelector
    - :SelectColorS 打開選擇清單 
    - C-n 下一個
    - C-p 上一個
    - C-q 關閉
* css color
* ctrlp
    - ctrl+p 打開功能
    - 打開時 ctrl+f, ctrl+b 可以在 可以在 file/mru/buffer 三種模式中切換 
    - 打開時 可以用 ctrl+z 標示, 然後用 ctrl+o 一次打開標示的檔案
* dbext
    - <leader>se 執行選取的 SQL
    - <leader>sel 執行目前這行的 SQL
* fugitive
    - :Git [command] = :!git [command]
* Gundo
* Matrix Screensaver
* minibufexpl
* nerdtree
* Power Line
* snipMate
* tabular
* vimwiki
* xmledit 
  - 要記得要複製 ftplugin 裡面的檔案 變成 html.vim, htm.vim, gsp.vim...
* Zen Coding
 
 

* F8 顯示/切換 工具列, 功能列
* F9 Martix Screensaver
* F10 bar 
* F11 nerdtree
* F12 Gundo
* 





