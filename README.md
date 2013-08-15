My vimrc files
==============

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
4. delete vimfiles\bundle\modile-name folder
```

urls
----
* AutoComplPop: https://github.com/vim-scripts/AutoComplPop.git
* colorselector: https://github.com/c9s/colorselector.vim.git
* css color: https://github.com/ap/vim-css-color.git
* ctrlp: https://github.com/kien/ctrlp.vim.git
* dbext: https://github.com/vim-scripts/dbext.vim.git
* fugitive: https://github.com/tpope/vim-fugitive.git
* Gundo : http://github.com/sjl/gundo.vim.git
* indentLine: https://github.com/Yggdroot/indentLine.git
* matrix: https://github.com/uguu-org/vim-matrix-screensaver.git
* minibufexpl: https://github.com/fholgado/minibufexpl.vim.git
* multiple-cursors: https://github.com/terryma/vim-multiple-cursors.git
* nerdtree: https://github.com/scrooloose/nerdtree.git
* power line: https://github.com/Lokaltog/vim-powerline.git
* snipMate: https://github.com/msanders/snipmate.vim.git
* surround: https://github.com/tpope/vim-surround.git
* tabular: https://github.com/godlygeek/tabular.git


















Plugins
-------
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
    - `:SelectColorS` 打開選擇清單 
    - `C-n` 下一個
    - `C-p` 上一個
    - `C-q` 關閉
* css color
* ctrlp
    - `ctrl+p` 打開功能
    - 打開時 `ctrl+f`, `ctrl+b` 可以在 可以在 file/mru/buffer 三種模式中切換 
    - 打開時 可以用 `ctrl+z` 標示, 然後用 `ctrl+o` 一次打開標示的檔案
* dbext
    - `<leader>se` 執行選取的 SQL
    - `<leader>sel` 執行目前這行的 SQL
* fugitive
    - `:Git [command]` = :!git [command]
* Gundo
    - `F12` 切換 Gundo 畫面, 可以看到目前為止在本地修改的內容
* indentLine
    - 顯示 indent 的垂直線
* Matrix Screensaver
    - `F9` 切換 screensaver
* minibufexpl
    - `F10` 切換是否顯示 minibufexpl
    - `ctrl+tab` 可以在打開的文件中切換
    - 在 minibufexpl 上按 `d` 可以關閉打開的文件
* multiple cursors
    - `ctrl+n `
* nerdtree
    - `F11` 切換 nerdtree 畫面 
    - 設定 NERDTreeIgnore 可以過濾一些不想顯示的檔案
* Power Line
* snipMate
    - 輸入在 snipmate/snippets 裡面定義的字按 `Tab` 就可以呼叫
    - html: doct5, html, body, head, title, script, scriptsrc, style, base, r, div, fieldset, form, h1, input, label, link, mailto, meta, opt, select, table, textarea
    - java: main, pu, po, pr, st, fi, ab, re, br, de, ca, th, sy, im, imp, ext, j.u, j.i, j.b, j.n, j.m, if, el, elif, wh, for, fore, sw, cs, tc, t, cl, in, m, , v, co, cos, as, try, tryf, rst 
    - javascript: proto, fun, f, if, ife, t, switch, case, for, forr, wh, do, :f, timeout, get, gett 
    - python: #!, imp, docs, wh, for, cl, def, deff, defs, property, ld, ., try, ifmain, _
    - ruby: =b, y, rb, beg, req, #, end, case, when, def, deft, if, ife, elsif, unless, while, for, until, cla, cla-, mod, r, w, rw, Enum, Comp, Forw-, defs, defmm, defd, defds, am, app, usai, usau, array, hash, file, Dir, dir, deli, fil, flao, zip, dow, ste, tim, upt, loo, ea, eadeab, eac-, eai, eaid, eak, eakd, eal, eald, eap, eapd, eas-, easd-, eav, eavd, eawi, eawid, reve, reved, inj, injd, map, mapd, mapwi-, sor, sorb, ran, all, any, cl, col, cold, det, detd, fet, fin, find, fina, finad, gre, sub, sca, scad, max, min, par, pard, rej, rejd, sel, seld, lam, do, :, ope, patfh, unif, optp, opt, tc, ts, as, ase, asne, asid, asio, asko, asn, asnn, asm, asnm, aso, asr, asnr, asrt, ass, asns, ast, asnt, fl, bm-, rep, Md, Ml, deec, Pn-, tra, xml-, xpa, clafn, sinc, nam, tas
    - snippet: snip, msnip
    - bim: header, guard, f, for, wh, if, ife
* surround
    - 主要命令有 `cs`, `ds`, `yss`, `ysiw`, `S`
    - `cs"'` 可以將 "Hello, World!" 改成 'Hello, World!'
    - `cs'<q>` 可以將 'Hello, World!' 改成 <q>Hello, World!</q>
    - `dst` 可以將 <q>Hello, World!</q> 改成 Hello, World!
    - `yss)` **整行** 可以將 Hello, World! 改成 (Hello, World!)
    - `ysiw]` **單個單字** 可以將 (Hello, World!) 改成 ([Hello], World!)
    - Visual mode 下, `S<div>` **選取範圍** 可以將 ([Hello], World!) 改成 <div>([Hello], World!)</div> 
    - yss 整行 ysiw 單字 S 選取範圍
* tabular
    - 用法 `:Tab /,`
* vimwiki
    - 可用 .wiki, .md 檔案寫個人 wiki
* xmledit 
    - 要記得要複製 ftplugin 裡面的檔案 變成 html.vim, htm.vim, gsp.vim...
    - 類似 AutoClose, 可以自動補齊 html tag
    - 還有 html tag 屬性的 list 可以用
    - `<Leader>d` 可以刪除, 目前所在的 tag 本身
* Zen Coding
    - insert mode: `<c-y>,` 產生 html tag 
    - visual mode: `<c-y>,` 快速編輯
        ```
        Write as below.

        test1
        test2
        test3

        Then do visual select(line wize) and type |<C-Y>,|.
        If you request 'Tag:', then type 'ul>li*'.

        <ul>
            <li>test1</li>
            <li>test2</li>
            <li>test3</li>
        </ul>
        ```
    - insert mode: `<c-y>d` 選取所在的 tag 裡面所有內容
    - insert mode: `<c-y>i` 作用在 img tag 上, 取得當前圖片的大小
    - insert mode: `<c-y>k` 移除整個 tag, 包含內容
    - insert mode: `<c-y>j` split/join tag
    - insert mode: `<c-y>/` comment
    - insert mode: `<c-y>a` 作用在網址上, 產生成 a tag
    - visual mode: `<c-y>c` code pretty
 
* F8 切換 gvim 工具列, 功能列

