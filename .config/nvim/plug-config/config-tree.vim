" ==== NerdTree ====

let g:NERDTreeMapCustomOpen = '<SPACE>'
nnoremap <F8> :NERDTreeToggle<CR>
nnoremap <M-t> :NERDTreeFocus<CR>

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
