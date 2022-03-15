" =============================================================================
" ####                           (Neo)Vim Config                           ####
" =============================================================================

" :PlugStatus -> See status
" :PlugInstall -> Install Plugins
" :PlugUpdate -> Update plugins
" :PlugUpgrade -> Upgrade vim-plug itself

call plug#begin()

    " >>>>> Color Scheme <<<<<

    Plug 'phanviet/vim-monokai-pro'
    " ----------------------------------------------------------------


    " >>>> Nice

    Plug 'szw/vim-maximizer'
    Plug 'vimwiki/vimwiki'
    " ----------------------------------------------------------------


    " >>>>> Git <<<<<

    Plug 'tpope/vim-fugitive'
    Plug 'junegunn/gv.vim'
    " Plug 'airblade/vim-gitgutter'
    " ----------------------------------------------------------------


    " >>>>> File Search <<<<<

    Plug 'preservim/nerdtree' " NerdTree
    Plug 'ryanoasis/vim-devicons' " Adds filetype-specific icons to NERDTree files and folders
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "Fuzzy Finder - Files
    Plug 'junegunn/fzf.vim'
    " ----------------------------------------------------------------


    " >>>>> Syntax Stuff <<<<<

    Plug 'RRethy/vim-illuminate'
    Plug 'tpope/vim-surround' " Change tags, delete tags...
    Plug 'tpope/vim-commentary'
    Plug 'mattn/emmet-vim'  " HTML completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}  " Autocomplete
    Plug 'sheerun/vim-polyglot'
    " ----------------------------------------------------------------

call plug#end()


source ~/.config/nvim/general/general-settings.vim
source ~/.config/nvim/plug-config/config-theme.vim
source ~/.config/nvim/plug-config/config-vimwiki.vim
source ~/.config/nvim/general/bindings.vim
source ~/.config/nvim/general/custom-functions.vim
source ~/.config/nvim/plug-config/config-coc.vim
source ~/.config/nvim/plug-config/config-illuminate.vim
source ~/.config/nvim/plug-config/config-fzf.vim
source ~/.config/nvim/plug-config/config-tree.vim
source ~/.config/nvim/plug-config/config-emmet.vim
" source ~/.config/nvim/plug-config/config-gutter.vim
source ~/.config/nvim/general/status-line.vim
