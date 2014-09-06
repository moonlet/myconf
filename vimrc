 "#vimrc "

"设置undle
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" " required!
Bundle "gmarik/vundle"


"bundle分为三类：
"在Github vim-scripts 用户下的repos,只需要写出repos名称
"在ithub其他用户下的repos, 需要写出“用户名/repos名”
"不在Github上的插件，需要写出git全路径

"文件浏览
Bundle "scrooloose/nerdtree"  
Bundle "fholgado/minibufexpl.vim"
Bundle "scrooloose/syntastic"
Bundle "kien/ctrlp.vim"
"代码符号
Bundle "taglist.vim"    
Bundle "Shougo/neocomplcache.vim"
"缩进标识
Bundle "Yggdroot/indentLine"
let g:indentLine_noConcealCursor = 1
let g:indentLine_color_term = 0
let g:indentLine_char = '|'

Bundle "winmanager"    
"Bundle "Pydiction"
Bundle "https://github.com/Lokaltog/vim-powerline"
"vim 主题
Bundle "altercation/vim-colors-solarized"
Bundle "tomasr/molokai"
filetype plugin indent on     " 
"undle设置完毕

" basic setting"
set expandtab
set textwidth=79
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent
set nu
set hls
set cursorline

" set encoding
set encoding=utf8
set fileencodings=utf8,gb2312,gb18030,ucs-bom,latin1

"vim 主题设定
syntax enable
set background=dark
colorscheme solarized
"colorscheme molokai


""""""""""""""""""""""""""""""""""""
" CtrlP
""""""""""""""""""""""""""""""""""""
let g:ctrlp_by_filename=1
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_cache_dir=$HOME.'/.vim/tmp/ctrlp'
let g:ctrlp_mruf_relative=1
let g:ctrlp_user_command={
  \ 'types': {
    \ 1: ['.git/', 'cd %s && git ls-files'],
    \ 2: ['.hg/', 'hg --cwd %s locate -I .'],
    \ },
  \ 'fallback': 'find %s -type f',
  \ }

""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""
" neocomplcache
""""""""""""""""""""""""""""""""""""
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_camel_case_completion=1
let g:neocomplcache_enable_underbar_completion=1
let g:neocomplcache_enable_smart_case=1

" default # of completions is 100, that's crazy
let g:neocomplcache_max_list=10

" words less than 3 letters long aren't worth completing
let g:neocomplcache_auto_completion_start_length=3

"python 自动补全
filetype plugin on
let g:pydiction_location = '/Users/chenlong/.vim/bundle/Pydiction/complete-dict'

"Powerline
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
"let g:Powerline_symbols = 'fancy'

"taglist
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出viDTree_title="[NERDTree]"
"let Tlist_Use_Right_Window = 1

"miniExpBuffe
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMoreThanOne=0

"Winmanager
let g:winManagerWindowLayout='FileExplorer,BufExplorer|TagList' 
let g:AutoOpenWinManager = 1
let g:winManagerWidth = 35
" key mapping"
nmap wm :WMToggle<CR>  
map nt :NERDTree<CR>
map rp :! python %
map tl :TlistToggle<CR>
nmap dt :g/###test/,/###/d

" vim: set expandtab tabstop=2 shiftwidth=2:
