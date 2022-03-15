" let mapleader = " "

" Remove extra spaces on save
autocmd BufWritePre * %s/\s\+$//e

" Delete all buffers except current one
command! BufOnly silent! execute "%bd|e#|bd#"
nnoremap \q :BufOnly<CR>

" nnoremap <M-f> :call FormatCurrentFile()<CR>
nnoremap <M-f> :call CocAction('format')<CR>

nnoremap <SPACE> <Nop>
vnoremap <SPACE> <Nop>
command! Q :q

nnoremap <F1> :nohlsearch<CR>
nnoremap * *<C-o>

"  >>>>> Find and Replace text <<<<<
nnoremap <M-c> :%s//gI<Left><Left><Left>

"  >>>>>>>>>>  Save Files
nmap <M-s> :w<CR>
imap <M-s> <Esc>:w<CR>

" >>>>> Resize Window <<<<<
nnoremap <M-0> <C-w>=
nnoremap <M-+> :vertical resize +5<CR>
nnoremap <M--> :vertical resize -5<CR>
nnoremap \+ :res +5 <CR>
nnoremap \- :res -5 <CR>

" >>>>> Fix scrolling when text is wrapped <<<<<
nnoremap j gj
vnoremap j gj
nnoremap <Down> gj
vnoremap <Down> gj
" inoremap <Down> <C-o>gj
nnoremap k gk
vnoremap k gk
nnoremap <Up> gk
vnoremap <Up> gk
" inoremap <Up> <C-o>gk
" noremap <silent> 0 g0
" noremap <silent> $ g$
" vnoremap <silent> 0 g0
" vnoremap <silent> $ g$

"  >>>>> Scroll 1/2 page <<<<<
nnoremap <M-2> <C-d>
vnoremap <M-2> <C-d>
nnoremap <M-1> <C-u>
vnoremap <M-1> <C-u>

"  >>>>> Change between windows <<<<<
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
nnoremap <C-h> <C-W>h

"  >>>>> Change Tabs && Buffers <<<<<
nnoremap <M-ç> gT
nnoremap <M-\> gt
nnoremap <M-Up> :bn<CR>
nnoremap <M-Down> :bp<CR>

"  >>>>> Show Tabs && Buffers <<<<<
nnoremap <F4> :W<CR>
nnoremap <F3> :Buffers<CR>

"  >>>>> Replace Lines <<<<<
" Replace current line with below line
nnoremap mj :m .+1<CR>==
vnoremap mj :m '>+1<CR>gv=gv
" Replace current line with above line
nnoremap mk :m .-2<CR>==
vnoremap mk :m '<-2<CR>gv=gv

"  >>>>> Fix indenting visual block <<<<<
vmap < <gv
vmap > >gv
