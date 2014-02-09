"==============================================="

set nocompatible                                "ViM instead if Vi
syntax on                                       "vim in color
set showcmd                                     "show command in lower right corner
set ruler                                       "display row,column in bottom right
set title                                       "show filename at top of terminal
set ignorecase                                  "ignore case when searching
set smartcase                                   "ignore case when searching unless capitalized
set hlsearch                                    "highlight search results
set showmatch                                   "highlight matching braces
set expandtab                                   "use a series of space in place of tab
set shiftwidth=4                                "number of spaces used in auto-indent
set numberwidth=2                               "spacing when numbered list
set tabstop=4                                   "number of spaces to use when replacing a tab
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
