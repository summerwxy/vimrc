vimrc
=====

* nerdtree
* AutoClose
* xmledit 
  - Ҫӛ��Ҫ�}�u ftplugin �e��ęn��
* snipMate
* Zen Coding
* AutoComplPop

  To enable auto-popup for this completion, add following function to
  plugin/snipMate.vim:
  >
    fun! GetSnipsInCurrentScope()
      let snips = {}
      for scope in [bufnr('%')] + split(&ft, '\.') + ['_']
        call extend(snips, get(s:snippets, scope, {}), 'keep')
        call extend(snips, get(s:multi_snips, scope, {}), 'keep')
      endfor
      return snips
    endf
  <
