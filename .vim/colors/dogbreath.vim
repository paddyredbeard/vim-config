" Vim color file
"
" Maintainer:   Patrick Barabe <pbarabe@gmail.com>
" Last Change:  2006 February 10

set background=light

hi clear
if exists("syntax_on")
 syntax reset
endif

let g:colors_name = "dogbreath"

hi Comment      guifg=Grey
hi Normal       guifg=Black guibg=White
hi Constant     guifg=DarkGreen
hi Special      guifg=Red
hi Identifier   guifg=Blue
hi Statement    gui=none    guifg=SaddleBrown
hi PreProc      guifg=Purple
hi Type         gui=none    guifg=Blue
hi Visual       gui=none    guifg=Black     guibg=Yellow
hi Search       gui=none    guifg=Black     guibg=Yellow
hi Tag          guifg=DarkGreen
hi Error        guibg=Red   guifg=White
hi Todo         guifg=Blue  guibg=Yellow
hi StatusLine   gui=none    guifg=Yellow    guibg=DarkGray
hi Operator     guifg=OrangeRed

" diffsplit colors
"hi DiffText     guibg=#4e9a06 guifg=#FFFFFF gui=bold
"hi DiffChange   guibg=#4e9a06 guifg=#FFFFFF gui=bold
"hi DiffAdd      guibg=#204a87 guifg=#FFFFFF gui=bold
"hi DiffDelete   guibg=#5c3566 guifg=#FFFFFF gui=bold
hi DiffText     guibg=#006600 guifg=#FFFFFF gui=none
hi DiffChange   guibg=#9ccf9c guifg=#000000 gui=none
hi DiffAdd      guibg=#ccccff guifg=#000000 gui=none
hi DiffDelete   guibg=#cfcfc1 guifg=#FFFFFF gui=none


" next 4 lines inspired by chela_light
" http://www.vim.org/scripts/script.php?script_id=972
hi vertsplit    guibg=#2222ff   guifg=#2222ff   gui=none
hi statusline   guibg=#009900   guifg=#ffff00   gui=none
hi statuslinenc guibg=#2222ff   guifg=#cccccc   gui=none
hi pmenusel     guibg=#2222ff   guifg=#ffffff   gui=none


hi! link MoreMsg        Comment
hi! link ErrorMsg       Visual
hi! link WarningMsg     ErrorMsg
hi! link Question       Comment
hi  link String         Constant
hi  link Character      Constant
hi  link Number         Constant
hi  link Boolean        Constant
hi  link Float          Number
hi  link Function       Identifier
hi  link Conditional    Statement
hi  link Repeat         Statement
hi  link Label          Statement
"hi  link Operator       Statement
hi  link Keyword        Statement
hi  link Exception      Statement
hi  link Include        PreProc
hi  link Define         PreProc
hi  link Macro          PreProc
hi  link PreCondit      PreProc
hi  link StorageClass   Type
hi  link Structure      Type
hi  link Typedef        Type
hi  link SpecialChar    Special
hi  link Delimiter      Special
hi  link SpecialComment Special
hi  link Debug          Special

