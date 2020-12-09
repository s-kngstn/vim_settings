set number relativenumber
syntax on
set encoding=utf-8
filetype plugin indent on
set termguicolors
set nowrap
set nu
set smartindent
set smartcase
set scrolloff=8
set signcolumn=yes
"Give more space for displaying messages.
set cmdheight=2
set updatetime=50
set noswapfile	
set colorcolumn=120
set incsearch 
let mapleader =","

if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
        echo "Downloading junegunn/vim-plug to manage plugins..."
        silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
        silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
        autocmd VimEnter * PlugInstall
endif


call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'tomasr/molokai'
Plug 'preservim/nerdtree'
Plug 'davidhalter/jedi'
Plug 'davidhalter/jedi-vim'
Plug 'vim-airline/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'jiangmiao/auto-pairs'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'jremmen/vim-ripgrep'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

colorscheme molokai 
hi Normal ctermbg=0 guibg=black

"Open Nerdtree Ctl+n
map <C-n> :NERDTreeToggle<CR>

let g:ale_linters = {
      \   'python': ['flake8', 'pylint'],
      \   'ruby': ['standardrb', 'rubocop'],
      \   'javascript': ['eslint'],
      \}

let g:ale_fixers = {
      \    'python': ['yapf'],
      \}
nmap <F10> :ALEFix<CR>
let g:ale_fix_on_save = 1
let g:rehash256 = 1
let g:ctrlp_use_caching = 0
