" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer: kadych <kirill.dunaev@gmail.com>
" Last Change: 2012 March 23

set background=light
hi clear

if exists("syntax_on")
 syntax reset
endif

let g:colors_name = "turquoise"

hi Normal       guifg=black guibg=#e4f1f1  
hi NonText      guifg=#93a1a1
hi Comment      guifg=darkgreen 
hi Constant     guifg=darkmagenta 
hi Identifier   guifg=black  
hi Statement    guifg=black gui=bold 
hi PreProc      guifg=darkmagenta 
hi Type         guifg=black 
hi Special      guifg=black 
hi Error        guifg=#e4f1f1 guibg=red  
hi Todo         guifg=black guibg=orange  
hi Function     guifg=black gui=bold

" hi Menu         guifg=#e4f1f1 guibg=#93a1a1 gui=bold
hi WildMenu     guifg=#e4f1f1 guibg=#5f8787 gui=bold
hi StatusLine   guifg=#e4f1f1 guibg=#93a1a1 gui=none
hi StatusLineNC guifg=black guibg=#5f8787 gui=none
hi VertSplit    guifg=#e4f1f1 guibg=#5f8787 gui=none

hi Visual       guifg=white guibg=#2e8b57  

hi Cursor       guifg=black guibg=#8fc5c5 
hi CursorIM     guifg=white guibg=PaleTurquoise3
hi CursorLine   guibg=#d8e9e9  
hi CursorLineNr guifg=#5f8787 gui=bold
hi LineNr       guifg=#93a1a1 guibg=#d8e9e9 
hi MatchParen   guibg=#8fc5c5 guifg=white  

hi ErrorMsg     guifg=darkmagenta guibg=#e4f1f1
hi WarningMsg   guifg=black
hi ModeMsg      guifg=darkgreen gui=none

hi Search       guifg=black guibg=#ffffaf
hi IncSearch    guifg=black guibg=yellow
" hi Title        guifg=#e4f1f1 gui=bold
hi Title        guifg=darkmagenta gui=bold

" hi Folded       guifg=#e4f1f1 guibg=#93a1a1 
hi Folded       guifg=#5f8787 guibg=#d8e9e9

hi TabLineSel   guifg=#e4f1f1 guibg=#5f8787 gui=bold
hi TabLine      guifg=#e4f1f1 guibg=#93a1a1 gui=none
hi TabLineFill  guifg=#5f8787 guibg=#d8e9e9 gui=underline

