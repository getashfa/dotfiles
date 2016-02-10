" Vim syntax file 
" Language: AHIR assembly (aa)
" Maintainer: Neha Karanjkar
" Latest Revision: Feb 2016

if exists("b:current_syntax")
finish
endif

syn clear
syn sync fromstart " change this if it gets slow.
syn sync linebreaks=1

" aa Comments are C-style single line comments
" that begin with '//' and extend upto the end of the line
syn match  aaComment "\/\/.*$"

" aa Keywords are '$' followed by alphanumeric characters
syn match aaKeyword "\$\k*" 


" aa Identifiers are [a-z] or [A-Z] followed by alphanumeric characters
syn match aaIdentifier "[a-zA-Z]\k*" 


" aa Symbols
syn match aaSpecialSymbol ":=\|:"  


" constants
syn match aaNamedConstant "\(ONE\|ZERO\)_[0-9]\+"
syn match aaBinaryConstant "\<_b[01]\+\>"
syn match aaNumber "\v<\d+>"


let b:current_syntax = "aa"

hi def link aaComment  		Comment
hi def link aaKeyword   	Keyword
hi def link aaIdentifier	None
hi def link aaSpecialSymbol	Type
hi def link aaNamedConstant	Constant
hi def link aaBinaryConstant	Constant
hi def link aaNumber		Constant
