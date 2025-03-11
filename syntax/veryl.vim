" Veryl syntax file
" Language:             Veryl
" Maintainer:           Naoya Hatta <dalance@gmail.com>
" URL:                  https://github.com/veryl-lang/veryl
" License:              MIT or Apache 2
" ----------------------------------------------------------------------------

" quit when a syntax file was already loaded
if exists("b:current_syntax")
    finish
endif

" Number
syn match verylNumber "\(\<\d\+\|\)'[sS]\?[bB]\s*[0-1_xXzZ?]\+\>"
syn match verylNumber "\(\<\d\+\|\)'[sS]\?[oO]\s*[0-7_xXzZ?]\+\>"
syn match verylNumber "\(\<\d\+\|\)'[sS]\?[dD]\s*[0-9_xXzZ?]\+\>"
syn match verylNumber "\(\<\d\+\|\)'[sS]\?[hH]\s*[0-9a-fA-F_xXzZ?]\+\>"
syn match verylNumber "\<[0-9_]\+\(\.[0-9_]*\|\)\([eE][+-][0-9_]*\|\)\>"
syn match verylNumber "'[01xzXZ]"
hi def link verylNumber Number

" Operator
syn match verylOperator1           "\m[~!&|^*+-/%><]"
syn match verylAssignmentOperator1 "\m[=]"
syn match verylOperator2           "\M<<\|>>\|<:\|>:\|<=\|>=\|==\|!=\|&&\|||"
syn match verylAssignmentOperator2 "\M+=\|-=\|*=\|/=\|%=\|&=\||=\|\^="
syn match verylOperator3           "\M<<<\|>>>\|===\|==?\|!==\|!=?"
syn match verylAssignmentOperator3 "\M<<=\|>>="
syn match verylAssignmentOperator4 "\M<<<=\|>>>="

hi def link verylOperator1           Operator
hi def link verylOperator2           Operator
hi def link verylOperator3           Operator
hi def link verylAssignmentOperator1 Operator
hi def link verylAssignmentOperator2 Operator
hi def link verylAssignmentOperator3 Operator
hi def link verylAssignmentOperator4 Operator

" Symbol
syn match verylSymbol "[)(#@:;}{,.\[\]]"
hi def link verylSymbol Special

" Keyword
syn keyword verylStructure module interface function modport package pub proto
syn keyword verylStructure enum struct
syn keyword verylStructure embed include unsafe
hi def link verylStructure Structure

syn keyword verylStatement param local const type
syn keyword verylStatement always_ff always_comb assign return as break
syn keyword verylStatement var inst let
syn keyword verylStatement import export
syn keyword verylStatement initial final
hi def link verylStatement Statement

syn keyword verylType clock clock_posedge clock_negedge
syn keyword verylType reset reset_async_high reset_async_low reset_sync_high reset_sync_low
syn keyword verylType logic bit tri signed
syn keyword verylType u32 u64 i32 i64 f32 f64
syn keyword verylType string
hi def link verylType Type

syn keyword verylDirection input output inout ref converse same
hi def link verylDirection Keyword

syn keyword verylConditional if if_reset else for in case switch inside outside default
hi def link verylConditional Conditional

syn keyword verylRepeat for in step repeat
hi def link verylRepeat Repeat

" Clock Domain
syn match verylClockDomain "`[a-zA-Z_][a-zA-Z0-9_]*"
hi def link verylClockDomain Constant

" Constant
syn match verylConstant "\<[A-Z][0-9A-Z_]\+\>"
hi def link verylConstant Constant

" Comment
syn region verylComment start="/\*" end="\*/"
syn match  verylComment "//.*"
hi def link verylComment Comment

" String
syn region verylString start="\"" skip="\\\"" end="\""
hi def link verylString String

syn include @python syntax/python.vim
unlet b:current_syntax
syn region pyBlock matchgroup=verylStructure start="py{{{" end="}}}" contains=@python keepend

syn include @systemverilog syntax/systemverilog.vim
unlet b:current_syntax
syn region svBlock matchgroup=verylStructure start="sv{{{" end="}}}" contains=@systemverilog keepend

let b:current_syntax = 'veryl'
