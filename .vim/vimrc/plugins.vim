"" Install plug.vim if not exists
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" -- MOVEMENT -- "
Plug 'easymotion/vim-easymotion'
Plug 'ctrlpvim/ctrlp.vim'
Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'

" -- UI ENHANCEMENT -- "
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/indentLine'

" -- LSPs & LINTERS -- "
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
" coc.vim plugins:
" CocInstall coc-solargraph
" CocInstall coc-html
" CocInstall coc-git

" -- EDITING ENHANCEMENT -- "
Plug 'junegunn/vim-easy-align'
Plug 'yukunlin/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'alvan/vim-closetag'

" -- LANGUAGE SUPPORT -- "
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-haml'
Plug 'pangloss/vim-javascript'
Plug 'itspriddle/vim-jquery'
Plug 'tpope/vim-markdown'
Plug 'othree/html5.vim'

" -- COLORS -- "
Plug 'ayu-theme/ayu-vim'

" -- MISC -- "
Plug 'vimwiki/vimwiki'

call plug#end()
