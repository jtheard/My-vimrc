"--------------------------------------------------------------------------------
" GUI Specific Options
"================================================================================
" Set Window Size
set lines=50
set columns=104


"au BufRead,BufEnter * let &numberwidth = float2nr(log10(line("$"))) + 2
"                   \| let &columns = &numberwidth + 100

set guioptions+=b   "enable bottom scrollbar
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
