if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

" Fugitive Github related plugin
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
" fzf
Plug 'junegunn/fzf', { 'do' : { -> fzf#install() } } " FZF latest binary
Plug 'junegunn/fzf.vim'                              " FZF
" ripgrep
" Plug 'jremmen/vim-ripgrep'
" File Explorer with Icons
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
" vim-gutentags
Plug 'ludovicchabant/vim-gutentags'
" Lightline.vim =light and configurable statusline/tabline plugin 
Plug 'itchyny/lightline.vim'
" Commentary.vim = use gc to comment and uncomment. toggle type
Plug 'tpope/vim-commentary'
" Multiple Selection Feature
Plug 'terryma/vim-multiple-cursors'

if has("nvim")
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'windwp/nvim-autopairs'
  Plug 'windwp/nvim-ts-autotag'
  " COC : Use release branch (recommend)
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " neovim/nvim-lspconfig, check its server_configuration for ccls as well. 
  " https://github.com/tami5/lspsaga.nvim as well.
  " Vista vim to monitor tags and symbols
  Plug 'liuchengxu/vista.vim'
endif

call plug#end()

" Plugins I don't use
"syntax highlighting, indenting and autocompletion for the dynamic stylesheet language, CSS
" Plug 'groenewege/vim-less', { 'for': 'less' } 
" Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
