"" Indent line
let g:indentLine_char = '|'
let g:indentLine_first_char = '|'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
let g:indentLine_concealcursor = ''
let g:indentLine_conceallevel = 2

"" Lightline
let g:lightline = {
\ 'colorscheme': 'OldHope',
\}

"" CtrlP Ignore
let g:ctrlp_custom_ignore = {
\ 'dir':  '\v[\/](\.git|\.hg|\.svn|node_modules|vendor|docs)$'
\}

"" Ale Linters
let g:ale_linters = {
\ 'ruby': ['ruby', 'rubocop', 'reek', 'solargraph']
\}
