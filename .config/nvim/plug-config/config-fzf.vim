" ==== FZF ====

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-i': 'split',
  \ 'ctrl-s': 'vsplit' }

nnoremap <C-p> :Files<cr>
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout=reverse --margin=1,4"
