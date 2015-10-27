" Vim color file
"
" Maintainer:   Patrick Barabe <pbarabe@gmail.com>
" Last Change:  2006 February 10

set background=light

hi clear
if exists("syntax_on")
 syntax reset
endif

let g:colors_name = "dogbreath2"

hi Comment      guifg=Orange
hi Normal       guifg=Black guibg=#eeeeee
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

