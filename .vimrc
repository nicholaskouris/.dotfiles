"==============================================="

set nocompatible                                "ViM instead if Vi
syntax on                                       "vim in color
set showcmd                                     "show command in lower right corner
set ruler
set ignorecase
set smartcase
set hlsearch
set showmatch
set expandtab
set shiftwidth=4
set numberwidth=2
set tabstop=4
set softtabstop=4
set shiftround
set autoindent
au FileType py set smartindent
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set listchars=tab:▷▷,trail:⋅,nbsp:⋅,eol:¬       "set invisible chars

"==============================================="

nmap <leader>l :set list!<CR>
nmap <leader>n :set nu!<CR>
nmap <leader>p :echo expand('%:p')<CR>
