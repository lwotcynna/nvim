set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

" lightline statusline
let g:lightline = {
    \ 'colorscheme': 'ayu',
    \ }

" IndentLine
let g:indentLine_first_char = ' '
"let g:indentLine_first_char = '▏'
"let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
