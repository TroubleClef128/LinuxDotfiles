call plug#begin('~/.local/share/nvim/site/autoload/plugged')

  " Better Syntax Support
  Plug 'sheerun/vim-polyglot'
  " File Explorer
  Plug 'scrooloose/NERDTree'
  " Auto pairs for '(' '[' '{'
  Plug 'jiangmiao/auto-pairs'
  " Color preview support
  Plug 'RRethy/vim-hexokinase'
  " Easily make colorschemes
  Plug 'rktjmp/lush.nvim'
  " Airline bar and themes
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " Additional colorschemes
  Plug 'flazz/vim-colorschemes'
  " Surround shortcut
  Plug 'tpope/vim-surround'
  " Transparent background
  Plug 'xiyaowong/nvim-transparent'
  " LaTeX support
  Plug 'lervag/vimtex'
call plug#end()
