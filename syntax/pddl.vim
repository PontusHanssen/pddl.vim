" pddl.vim - Syntax highlighting for Planning Domain Definition Language
" (PDDL) files
" 
" Maintainer: Pontus Persson <https://pontus-persson.se/>
" Latest Revision: 2016-09-26


if exists("b:current_syntax")
  finish
endif

syn match pddlVariable '?\(\w\|[0-9]\|_\|-\)\+'

syn region pddlComment start=/\s*;/ end=/$/  " comments OK from first ; to end of line


syn keyword pddlBuiltin define and or not problem domain either exists forall
syn keyword pddlBuiltin when assign scale-up scale-down increase decrease start
syn keyword pddlBuiltin end all over minimize maximize total-time

syn match pddlUses ':\(strips\|typing\|equality\|adl\|fluents\|\)'
syn match pddlUses ':\(disjunctive\|negative\|existential\|universal\)\-preconditions'
syn match pddlUses ':\(durative\-actions\|derived\-predicates\|timed\-initial\-literls\)'

syn match pddlKeyword ':\(requirements\|types\|constants\|predicates\|action\|durative-action\|domain\|parameters\|effect\|precondition\|objects\|init\|goal\|functions\|duration\|condition\|process\|event\|constraint\|derived\|metric\)'

let b:current_syntax = "pddl"
highlight def link pddlBuiltin Function
highlight def link pddlKeyword Keyword
highlight def link pddlUses Constant 
highlight def link pddlVariable Type
highlight def link pddlComment Comment 
