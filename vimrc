"Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

"NERDtree
" open NERDTree with ctrl+n
map <F2> :NERDTreeToggle<CR>
" close vim if the only window left open is a NERDTree
autocmd bufenter * if(winnr("$")==1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" change default arrows[below are default arrow symbols]
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"NERDTree-git
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" tagbar
nmap <F3> :TagbarToggle<CR>

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"let g:syntastic_c_include_dirs = [ '../include', 'include' ]

set nu
set autoindent
set tabstop=4
set shiftwidth=4

set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8
filetype indent on
autocmd FileType python setlocal et sta sw=4 sts=4
set relativenumber

"make gj/gk move by virtual lines when used without a count
noremap <silent> <expr> j (v:count==0? 'gj' : 'j')
noremap <silent> <expr> k (v:count==0? 'gk' : 'k')
