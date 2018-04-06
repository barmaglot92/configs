set ruler
set swapfile
set dir=~/tmp
set hlsearch
set number relativenumber
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent 
set expandtab
set incsearch
set number
set ruler
set ignorecase

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'szorfein/darkest-space'
Plugin 'VundleVim/Vundle.vim'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sleuth'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
hi DiffAdd guifg=NONE ctermfg=NONE guibg=#464632 ctermbg=238 gui=NONE cterm=NONE
hi DiffChange guifg=NONE ctermfg=NONE guibg=#335261 ctermbg=239 gui=NONE cterm=NONE
hi DiffDelete guifg=#f43753 ctermfg=203 guibg=#79313c ctermbg=237 gui=NONE cterm=NONE
hi DiffText guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=reverse cterm=reverse

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'

Plug 'leafgarland/typescript-vim'
" Plug 'Valloric/YouCompleteMe'

Plug 'altercation/vim-colors-solarized'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'scrooloose/nerdtree'
let NERDTreeShowHidden=1

autocmd StdinReadPre * let s:std_in=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

Plug 'ryanoasis/vim-devicons'

Plug 'w0rp/ale' " Asynchronous Lint Engine
let g:ale_fixers = {
            \   'javascript': ['eslint', 'prettier'],
            \   'typescript': ['tslint', 'prettier']
            \}

Plug 'airblade/vim-gitgutter'
let g:gitgutter_signs = 1
let g:gitgutter_highlight_lines = 1
let g:gitgutter_enabled = 0

Plug 'pangloss/vim-javascript'

Plug 'vim-scripts/grep.vim'
Plug 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims = 1

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

Plug 'chriskempson/base16-vim'

call plug#end()


" C-p - Fuzzy seacrh
nnoremap <C-t> :Files<cr>
" NerdTree
map <C-n> :NERDTreeToggle<CR>
nmap ,n :NERDTreeFind<CR>

" ALEFix
nnoremap ,f :ALEFix<cr>

nnoremap th :tabprev<CR>
nnoremap tl :tabnext<CR>
nnoremap tn :tabnew<CR>
nnoremap td  :tabclose<CR>

" Fix indentation
set expandtab
set shiftwidth=4
set softtabstop=4
map <F7> mzgg=G`z

" GitGutterToggle
nnoremap ,g :GitGutterToggle<CR>

" Figutive
nnoremap ,d :Gdiff<CR>
nnoremap ,w :Gwrite<CR>

nnoremap <C-e> 10<C-e>
nnoremap <C-y> 10<C-y>

set clipboard=unnamed " use the system clipboard
