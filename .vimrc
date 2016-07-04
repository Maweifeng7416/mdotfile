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

" YouCompleteMe
" 让vim的补全菜单行为与一般IDE一致
set completeopt=longest,menu
" 离开插入模式后，自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" 上下左右键行为会显示其它信息
inoremap <expr> <Down> pumvisible() ?"\<C-n>":"\<Down>"
inoremap <expr> <Up> pumvisible()?"\<C-p>":"\<Up>"
inoremap <expr> <PageDown> pumvisible()?"\<PageDown>\<C-p>\<C-n>":"\<PageDown>"
inoremap <expr> <PageUp> pumvisible()?"\<PageUp>\<C-p>\<C-n>":"\<PageUp>"

"YouCompleteMe 默认 tab s-tab和自动补全冲突
" let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion = ['<Down>']
" let g:ycm_key_list_select_completion=['<c-p>']
let g:ycm_key_list_select_completion=['<Up>']
" 关闭 加载.ycm_confirm_extra_conf.py 的提示
let g:ycm_confirm_extra_conf=0

" 开启基于YCM标签引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 从第二个键入的字符就需要开始匹配
let g:ycm_min_num_of_chars_for_completion=2
" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键补全
let g:ycm_seed_identifiers_with_synatx=1
" 注释中补全
let g:ycm_complete_in_comments=1
" 字符串中补全
let g:ycm_complete_in_strings=1
" 注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0

" 跳转到宣称处
nnoremap <leader>gd :YcmComleter GoToDeclaration<CR>

" 跳转到定义处
nnoremap <leader>gf :YcmComleter GoToDefinition<CR>

inoremap <leader><leader> <C-x><C-0>

" vim-airline

let g:airline_theme="luna"
let g:airline_powerline_fonts=1

let g:airline#extension#tabline#enabled = 1
let g:airline#extension#tabline#buffer_nr_show = 1

" 设置切换Buffer快捷键
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>

" 关闭状态栏显示空白符号计数
let g:airline#extensions#whitespace#enable = 0
let g:airline#extensions#whitespace#symbol='!'

