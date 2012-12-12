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
    - F12 切換 Gundo 畫面, 可以看到目前為止在本地修改的內容
* Matrix Screensaver
    - F9 切換 screensaver
* minibufexpl
    - F10 切換是否顯示 minibufexpl
    - ctrl+tab 可以在打開的文件中切換
    - 在 minibufexpl 上按 d 可以關閉打開的文件
* nerdtree
    - F11 切換 nerdtree 畫面 
    - 設定 NERDTreeIgnore 可以過濾一些不想顯示的檔案
* Power Line
* snipMate
    - 輸入在 snipmate/snippets 裡面定義的字按 Tab 就可以呼叫
    - TODO: 列一些常用的在這邊

* tabular
* vimwiki
* xmledit 
  - 要記得要複製 ftplugin 裡面的檔案 變成 html.vim, htm.vim, gsp.vim...
* Zen Coding
 
* F8 切換 gvim 工具列, 功能列





