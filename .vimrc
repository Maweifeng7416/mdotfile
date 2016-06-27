"""""""""""""""""""""""""""""""""VIM配制""""""""""""""""""""""""""""""""""""""""""""""
" 关闭援助信息
set shortmess=atI
" 关闭兼容模式
set nocompatible
" 关闭文件类型检测
filetype off
" 关闭闪烁
set novisualbell
" 不要显示图行安钮
set go=
" 显示行号
set nu
" 总显示状态栏
set laststatus=2
" 高亮光标行
set cursorline
" 显示光标状态栏
set ruler
" 可以使用系统剪贴板
set clipboard=unnamed
if filereadable(expand("~/.vimrc.bundles"))
    source ~/.vimrc.bundles
endif
" 开启插件，及语法缩进
filetype plugin indent on
set completeopt=longest,menu

" 编码
set fileencodings=utf-8,bg18030,bgk,big5
set encoding=utf-8

" 显示语法提示
set showcmd

" 启动语法高亮
syntax enable

syntax on

" 格式布局
set expandtab
" TAB符占用4个空格
set tabstop=4
" 连续4个空格似为一个TAB
set softtabstop=4
" 格式化时制表符占用空格数
set shiftwidth=4
" 以下单词不换行
set iskeyword+=_,$,@,%,#,-
" 自动缩进
set autoindent
set cindent
" 为C程序提供自动缩进
set smartindent

" 搜索相关
"  忽略大写小
set ignorecase

" 使用ctrl + hijk 在窗口在切换
map <C-c> <C-W>c
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" NERDTree
map <F2> <esc>:NERDTree<CR>

