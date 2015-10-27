" Vim color file
"
" Maintainer:   Patrick Barabe <pbarabe@gmail.com>
" Last Change:  2006 February 10

set background=light

hi clear
if exists("syntax_on")
 syntax reset
endif

let g:colors_name = "comrade"

hi Comment      guifg=Orange
hi Normal       guifg=Black guibg=#ffffff
hi Constant     guifg=#666666
hi Special      guifg=#cc0000
hi Identifier   guifg=#cc0000
hi Statement    gui=none    guifg=#cc0000
hi PreProc      guifg=#cc9900
hi Type         gui=none    guifg=Brown
hi Visual       gui=none    guifg=Black     guibg=#ffcccc
hi Search       gui=none    guifg=Black     guibg=Yellow
hi Tag          guifg=DarkGreen
hi Error        guibg=#cc0000   guifg=Yellow
hi Todo         guifg=Blue  guibg=Yellow
hi StatusLine   gui=none    guifg=Yellow    guibg=DarkGray
hi Operator     guifg=OrangeRed

" NERDTree & VTreeExplorer
hi Directory    guifg=#993300 guibg=NONE    gui=none ctermfg=999

" next 4 lines inspired by chela_light
" http://www.vim.org/scripts/script.php?script_id=972
hi vertsplit    guibg=#999999   guifg=#ffffff   gui=none
hi statusline   guibg=#cc0000   guifg=#ffff00   gui=none
hi statuslinenc guibg=#999999   guifg=#ffffff   gui=none
hi pmenusel     guibg=#999999   guifg=#ffffff   gui=none


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

