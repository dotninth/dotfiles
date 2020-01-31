"************************************************************************
"" Mappings
"************************************************************************
"" Map Leader to space
let mapleader="\<Space>"

"" CtrlP
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"" Split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"" Line movement with text wrap
nnoremap j gj
nnoremap k gk

"" No highlight
nnoremap <silent> <leader>l :nohl<CR><leader>l

"" NerdTree
map <C-n> :NERDTreeToggle<CR>

"" Easy Align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Go To's
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
