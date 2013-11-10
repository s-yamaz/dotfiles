if has('gui_macvim')
	set showtabline=2
	set imdisable
endif
"カーソルは点滅させない
set guicursor=a:blinkon0
"ウィンドウサイズ縦40 横120
set lines=40
set columns=120
"カラースキームの設定
colorscheme zenburn
"colorscheme wombat
"カラースキームの色を変更
hi Pmenu guibg=#666666
hi PmenuSel guibg=#8cd0d3 guifg=#666666
hi PmenuSbar guibg=#333333
