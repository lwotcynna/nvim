" Get default from :h lightline
let g:lightline.active = {
    \ 'right': [ [ 'lineinfo' ],
    \            [ 'percent' ],
    \            [ 'filetype' ] ]
    \ }

let g:lightline.inactive = {
    \ 'right': [ [ 'lineinfo' ],
    \            [ 'percent' ],
    \            [ 'filetype' ] ]
    \ }

let g:lightline.tab = {
    \ 'active': [ 'filename', 'ficolorsme', 'modified' ],
    \ 'inactive': [ 'filename', 'ficolorsme', 'modified' ] }

let g:lightline.enable = {
    \ 'statusline': 1,
    \ 'tabline': 1
    \ }

let g:lightline.separator = {
    \   'left': '▏', 'right': ''
    \}
let g:lightline.subseparator = {
    \   'left': '▏', 'right': ''
    \}

let g:lightline.tabline_separator = g:lightline.separator
let g:lightline.tabline_subseparator = g:lightline.subseparator

"let g:lightline.tabline = {
"    \ 'left': [ [ 'tabs' ] ],
"    \ 'right': [ ] }

let g:lightline.mode_map = {
    \ 'n' : 'NORMAL',
    \ 'i' : 'INSERT',
    \ 'R' : 'REPLACE',
    \ 'v' : 'VISUAL',
    \ 'V' : 'V-LINE',
    \ "\<C-v>": 'V-BLOCK',
    \ 'c' : 'COMMAND',
    \ 's' : 'SELECT',
    \ 'S' : 'S-LINE',
    \ "\<C-s>": 'S-BLOCK',
    \ 't': 'TERMINAL',
    \ }

"let g:lightline.mode_map = {
"   \ 'n' : 'N',
"   \ 'i' : 'I',
"   \ 'R' : 'R',
"   \ 'v' : 'V',
"   \ 'V' : 'V-LINE',
"   \ "\<C-v>": 'V-BLOCK',
"   \ 'c' : 'C',
"   \ 's' : 'S',
"   \ 'S' : 'S-LINE',
"   \ "\<C-s>": 'S-BLOCK',
"   \ 't': 'T',
"   \ }
