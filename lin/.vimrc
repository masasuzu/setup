colorscheme darkblue
"colorscheme default

set t_RV=
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,cp932
set fileformats=unix,dos,mac
set ambiwidth=double

" インデント
set smartindent
set autoindent
set cindent

" タブの設定
set tabstop=4 shiftwidth=4
set expandtab
set shiftround

" 表示の設定
set list
set listchars=tab:>-,extends:<,trail:-,eol:<

set number
set showmatch

" 検索の設定
set ignorecase
set smartcase

" ステータス行の表示
set laststatus=2
set statusline+=[%F]
set statusline+=[%{&fileencoding}]

set cmdheight=2
set showcmd
set title

" 括弧の対応
imap {} {}<Left>
imap [] []<Left>
imap () ()<Left>
imap “” “”<Left>
imap ” ”<Left>
imap <> <><Left>
imap “ “<Left>


" 行末の余分なスペース削除
function! RTrim()
    let s:cursor = getpos(“.”)
    %s/\s\+$//e
    call setpos(“.”, s:cursor)
endfunction

autocmd BufWritePre * call RTrim()



autocmd FileType yaml set sw=2 ts=2
autocmd FileType html set sw=2 ts=2

syntax enable
let perl_no_extended_vars=1
