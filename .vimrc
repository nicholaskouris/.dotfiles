"================Vundle==============================="
set nocompatible                                      " ViM instead if Vi
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
"
call vundle#begin()
" Keep Plugin commands between vundle#begin/end.
" Plugins go here
"
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" ToDo; get syntastic working
" Plugin 'scrooloose/syntastic.git' 
Plugin 'editorconfig/editorconfig-vim'
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"===========end==Vundle==============================="
"
syntax on                                             " vim in color
set t_Co=256
colorscheme macvim
set background=light
highlight ColorColumn guibg=grey94
let &colorcolumn=join(range(81,999),",")
let macvim_skip_colorscheme=1


"====================================================="
"
set showcmd                                           " show command in lower right corner
set laststatus=2                                      " last 2 rows reserved for status
set ruler                                             " display row,column in bottom right
set number                                            " show line numbers
set incsearch                                         " show search matches as you type
set ignorecase                                        " ignore case when searching
set smartcase                                         " ignore case when searching unless capitalized
set hlsearch                                          " highlight search results
set showmatch                                         " highlight matching braces
set expandtab                                         " use a series of spaces in place of a tab
set numberwidth=3                                     " spacing when numbered list is visible
autocmd Filetype python setlocal ts=4 sw=4 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype yaml setlocal ts=2 sw=2 expandtab
set shiftround                                        " use a multiple of 'shiftwidth' when indenting
set wildignore=*.swp,*.pyc                            " ignore these file types on autocomplete
set autoindent
au FileType py set smartindent
set omnifunc=syntaxcomplete#Complete
set listchars=tab:▷▷,trail:⋅,extends:…,nbsp:⋅,eol:¬   " set invisible chars

"===============Mappings=============================="
nmap <leader>l :set list!<CR>
nmap <leader>n :set nu!<CR>
nmap <leader>p :echo expand('%:p')<CR>
nmap <leader>v :Vexplore<CR>
nmap <leader>w :set wrap!<CR>
nmap <leader>j <C-w>J<CR>
nmap <leader>k <C-w>K<CR>
nmap <leader>5 :res -5<CR>
nmap <leader>u <C-w><C-w><CR>
"
"===========end=Mappings=============================="

"====================================================="
"filetype plugin on                                   " enable plugins
"set shiftwidth=4                                     " number of spaces used in autoindent
"set tabstop=4                                        " number of spaces to use when replacing a tab
"set softtabstop=4
"set up solarized
" set colorcolumn=81                                  " Add color to column number 81  
"====================================================="
