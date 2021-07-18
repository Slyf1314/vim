"设置行号
set number
"colorscheme hybird
"按F2进入粘贴模式
set pastetoggle=<F2>
"高亮搜索
set hlsearch
"定义函数Settitle，自动插入文件头
func SetTitle()
    if &filetype == 'python'
        call setline(1,"\#!/usr/bin/env python”)
        call setline(2,"\# -*- coding:utf-8 -*-")
        normal G
        normal o
        normal o
        call setline(5,"if __name__ == '__main__':")
        call setline(6,"    pass")
    endif
endfunc

