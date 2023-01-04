"=================================================================================
"                                     Vim-Plug
"=================================================================================
" File system Explorer"
Plug 'scrooloose/NERDTree' 

" A plugin of NERDTREE showing git status flags"
Plug 'Xuyuanp/nerdtree-git-plugin'

"=================================================================================
"                                   Configuration
"=================================================================================
let g:NERDTreeGitStatusWithFlags = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:NERDTreeGitStatusNodeColorization = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
	\ 'Modified'  :'✹',
	\ 'Staged'    :'✚',
	\ 'Untracked' :'✭',
	\ 'Renamed'   :'➜',
	\ 'Unmerged'  :'═',
	\ 'Deleted'   :'✖',
	\ 'Dirty'     :'✗',
	\ 'Ignored'   :'☒',
	\ 'Clean'     :'✔︎',
	\ 'Unknown'   :'?',
\ }
let g:NERDTreeIgnore = ['^node_modules$']
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'	

" Open NerdTree automatically
"autocmd VimEnter * NERDTree

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Opens (or reopens) the NERDTree if it is not currently visible;
" otherwise, the cursor is moved to the already-open NERDTree.
"
"# nnoremap <leader>n :NERDTreeFocus<CR>

" Opens a fresh NERDTree. There are 3 cases:
"   - If no argument is given, the current directory will be used.
"   - If a directory is given, that will be used.
"   - If a bookmark name is given, the corresponding directory will be used.
"
"# nnoremap <C-n> :NERDTree<CR>

" If a NERDTree already exists, it is reopened and rendered again. 
" If <start-directory> or <bookmark> is given, NERDTree is set to that path. 
" If no NERDTree exists, the same as the |:NERDTree| command.
" Map the F3 key to toggle NERDTree open and close.
"
nnoremap <F3> :NERDTreeToggle<CR>

" Without the optional argument, find and reveal the file for the active
" With the <path> argument, find and reveal the specified path.
" Focus will be shifted to the NERDTree window, and the cursor will be
" placed on the tree node for the determined path.  If a NERDTree for the
" current tab does not exist, a new one will be initialized.
"
"# nnoremap <C-f> :NERDTreeFind<CR>
