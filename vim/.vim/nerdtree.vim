" Key Maps
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Vars
let g:NERDTreeHijackNetrw=0 
let NERDTreeShowHidden=1
let g:NERDTreeFileLines=1
let g:NERDTreeQuitOnOpen=1 

" Commands

" Start NERDTree only if a file or session is specified, eg. vim -S session_file.vim.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() > 0 | NERDTree | wincmd p | NERDTreeFind | wincmd p | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif
