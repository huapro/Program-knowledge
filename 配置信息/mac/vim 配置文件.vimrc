" Configuration file for vim

set modelines=0" CVE-2007-2438


" Normally we use vim-extensions. If you want true vi-compatibility

" remove change the following statements

set nocompatible" Use Vim defaults instead of 100% vi compatibility

set backspace=2" more powerful backspacing
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, :pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
"增加nerdtree git显示插件
Plugin 'Xuyuanp/nerdtree-git-plugin'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"安装taglist.vim
Plugin 'taglist.vim'

""""""""""""""""""""
"配置taglist
""""""""""""""""""""
let Tlist_Use_Right_Window = 1          "让taglist窗口出现在Vim的右边

let Tlist_File_Fold_Auto_Close = 1      "当同时显示多个文件中的tag时，设置为1，可使taglist只显示当前文件tag，其它文件的tag都被折叠起来。

let Tlist_Show_One_File = 1             "只显示一个文件中的tag，默认为显示多个

let Tlist_Sort_Type ='name'             "Tag的排序规则，以名字排序。默认是以在文件中出现的顺序排序

let Tlist_GainFocus_On_ToggleOpen = 1       "Taglist窗口打开时，立刻切换为有焦点状态

let Tlist_Exit_OnlyWindow = 1           "如果taglist窗口是最后一个窗口，则退出vim

let Tlist_WinWidth = 32             "设置窗体宽度为32，可以根据自己喜好设置

let Tlist_Ctags_Cmd='/usr/local/bin/ctags'  "这里比较重要了，设置ctags的位置，不是指向MacOS自带的那个，而是我们用homebrew安装的那个

           
"热键设置，我设置成Leader+t来呼出和关闭Taglist
map <C-l>  :TlistToggle<CR>  

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set smartindent

" 智能对齐


set autoindent

" 自动对齐


set confirm

" 在处理未保存或只读文件的时候，弹出确认


set tabstop=4

" Tab键的宽度


set softtabstop=4

set shiftwidth=4

"  统一缩进为4


set noexpandtab

" 不要用空格代替制表符


set number

" 显示行号


set history=50

" 历史纪录数


set hlsearch

set incsearch

" 搜索逐字符高亮


set gdefault

" 行内替换


set encoding=utf-8

set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936,utf-16,big5,euc-jp,latin1

" 编码设置


colorscheme torte

" 设置颜色主题


"set guifont=Menlo:h16:cANSI

" 设置字体


set langmenu=zn_CN.UTF-8

set helplang=cn

" 语言设置


set cmdheight=2

" 命令行（在状态行）的高度，默认为1,这里是2


set ruler

" 在编辑过程中，在右下角显示光标位置的状态行


set laststatus=2

" 总是显示状态行


set showcmd

" 在状态行显示目前所执行的命令，未完成的指令片段亦会显示出来


set scrolloff=3

" 光标移动到buffer的顶部和底部时保持3行距离


set showmatch

" 高亮显示对应的括号


set matchtime=5

" 对应括号高亮的时间（单位是十分之一秒）


set autowrite

" 在切换buffer时自动保存当前文件


set wildmenu

" 增强模式中的命令行自动完成操作


set linespace=2

" 字符间插入的像素行数目


set whichwrap=b,s,<,>,[,]

" 开启Normal或Visual模式下Backspace键，空格键，左方向键，右方向键，Insert或replace模式下左方向键，右方向键跳行的功能。


filetype plugin indent on

" 分为三部分命令：file on, file plugin on, file indent on.分别表示自动识别文件类型，用文件类型脚本，使用缩进定义文件。


"==================自定义的键映射======================


vnoremap $1 <esc>`>a)<esc>`<i(<esc>

vnoremap $2 <esc>`>a]<esc>`<i[<esc>

vnoremap $3 <esc>`>a}<esc>`<i{<esc>

vnoremap $$ <esc>`>a"<esc>`<i"<esc>

vnoremap $q <esc>`>a'<esc>`<i'<esc>

vnoremap $e <esc>`>a"<esc>`<i"<esc>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置打开NERDTree快捷键
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <F10> :NERDTreeToggle<CR> 

" 括号自动生成
"退出
inoremap jj <Esc>
inoremap jk <Esc>
inoremap kk <Esc>
inoremap kj <Esc>



map <C-n> :NERDTreeToggle<CR>
" 单键<F7>控制syntax on/off。原因是有时候颜色太多会妨碍阅读。


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Quickly Run 一键编译运行
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <F5> :call CompileRunGcc()<CR>

func! CompileRunGcc()
    exec "w" 
    if &filetype == 'c' 
        exec '!g++ % -o %<'
        exec '!time ./%<'
    elseif &filetype == 'cpp'
        exec '!g++ % -o %<'
        exec '!time ./%<'
    elseif &filetype == 'python'
        exec '!time python %'
    elseif &filetype == 'sh'
        :!time bash %
    endif                                                                              
endfunc 



" Don't write backup file if vim is being called by "crontab -e"

au BufWrite /private/tmp/crontab.* set nowritebackup

" Don't write backup file if vim is being called by "chpass"

au BufWrite /private/etc/pw.* set nowritebackup
"启动自动打开nerdtree
autocmd vimenter * NERDTree

" 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" 是否显示隐藏文件
let NERDTreeShowHidden=1
" 设置宽度
let NERDTreeWinSize=31
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" 显示书签列表
let NERDTreeShowBookmarks=1
"更改显示按钮
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
