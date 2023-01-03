"=================================================================================
"                                     Vim-Plug
"=================================================================================
"Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'

"=================================================================================
"                                   Configuration
"=================================================================================
" Bufer level pairs set
"
let g:AutoPairs = {'(':')', '[':']', '{':'}', "'":"'", '"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''"}

" The shortcut to toggle autopairs
"
let g:AutoPairsShortcutToggle = '<M-p>'

" Fast wrap the word. all pairs will be consider as a block (include <>).
" (|)'hello' after fast wrap at |, the word will be ('hello')
" (|)<hello> after fast wrap at |, the word will be (<hello>)
"
let g:AutoPairsShortcutFastWrap = '<M-e>'

" Jump to the next closed pair
"
let g:AutoPairsShortcutJump = '<M-n>'

" Map <BS> to delete brackets, quotes in pair
" execute 'inoremap <buffer> <silent> <BS> <C-R>=AutoPairsDelete()<CR>'
"
let g:AutoPairsMapBS = 1

" Map <C-h> to delete brackets, quotes in pair
"
let g:AutoPairsMapCh = 1

" Map <CR> to insert a new indented line if cursor in (|), {|} [|], '|', "|"
" execute 'inoremap <buffer> <silent> <CR> <C-R>=AutoPairsReturn()<CR>'
"
let g:AutoPairsMapCR = 1

" When g:AutoPairsMapCR is on, center current line after return if the line is at the bottom 1/3 of the window.
"
let g:AutoPairsCenterLine = 1

" Map <space> to insert a space after the opening character and before the closing one.
" execute 'inoremap <buffer> <silent> <CR> <C-R>=AutoPairsSpace()<CR>'
"
let g:AutoPairsMapSpace= 1

" set it to 1 to enable FlyMode.
" see FlyMode section for details.
"
let g:AutoPairsFlyMode = 0

" When you press the key for the closing pair (e.g. `)`) it jumps past it.
" If set to 1, then it'll jump to the next line, if there is only whitespace.
" If set to 0, then it'll only jump to a closing pair on the same line.
"
let g:AutoPairsMultilineClose = 1

" Work with FlyMode, insert the key at the Fly Mode jumped postion
"
let g:AutoPairsShortcutBackInsert = '<M-b>'

" Map <M-(> <M-)> <M-[> <M-]> <M-{> <M-}> <M-"> <M-'> to
" move character under the cursor to the pair.
"
let g:AutoPairsMoveCharacter= "()[]{}\"'"

