" Vim syntax file
"
" Mostly borrowed from the gcl language :)
"
" Language:	gcl

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn keyword	gclKeyword	inherit include true false null and or not
syn keyword	gclConditional	if else then
syn keyword     gclBrace        ( ) { } =

syn match gclAttr "\w\+\ze\s*="
syn match gclFuncArg "\zs\w\+\ze\s*:"
syn region gclStringParam start=+\${+ end=+}+
syn match  gclEndOfLineComment "#.*$"
syn region gclString1        start=+"+ skip=+\\"+ end=+"+ contains=gclStringParam
syn region gclString2        start=+'+ skip=+\\'+ end=+'+ contains=gclStringParam

hi def link gclKeyword       Keyword
hi def link gclConditional   Conditional
hi def link gclBrace         Special
hi def link gclString1       String
hi def link gclString2       String
hi def link gclEndOfLineComment Comment
hi def link gclAttr        Identifier
hi def link gclFuncArg     Identifier
