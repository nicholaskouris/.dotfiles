"================Vundle==============================="
set nocompatible                                      " ViM instead if Vi
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" Keep Plugin commands between vundle#begin/end.
" Plugins go here

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Solarized'
Plugin 'Syntastic' 
" Plugin 'editorconfig/editorconfig-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
"
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" syntastic options
let g:syntastic_ruby_checkers = ['mri', 'rubocop']
let g:syntastic_python_checkers = ['python', 'pep8']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"===========end==Vundle==============================="
syntax on                                             " vim in color

" setup for macvim 
if has("gui_running")
  set t_Co=256
  " colorscheme solarized
  colorscheme macvim
  set background=light
  highlight ColorColumn guibg=grey94
  let &colorcolumn=join(range(81,999),",")
  let macvim_skip_colorscheme=1
endif

"====================================================="
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
set autoindent                                        " copy the indentation from the previous line
set shiftround                                        " use a multiple of 'shiftwidth' when indenting
set wildignore=*.swp,*.pyc                            " ignore these file types on autocomplete
set omnifunc=syntaxcomplete#Complete
set listchars=tab:▷▷,trail:⋅,extends:…,nbsp:⋅,eol:¬   " set invisible chars

"====================================================="
" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else,
" do completion.
" github.com/garybernhardt/dotfiles/blob/master/.vimrc

function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <expr> <tab> InsertTabWrapper()
inoremap <s-tab> <c-n>

"===============Mappings=============================="
nmap <leader>l :set list!<CR>                         " hide/show eol, trail, etc.
nmap <leader>n :set nu!<CR>                           " hide/show line numbers
nmap <leader>p :echo expand('%:p')<CR>                " full path to file
nmap <leader>v :Vexplore<CR>
nmap <leader>w :set wrap!<CR>                         " line wrap on/off
nmap <leader>j <C-w>J<CR>
nmap <leader>k <C-w>K<CR>
nmap <leader>5 :res -5<CR>
nmap <leader>u <C-w><C-w><CR>

"===========end=Mappings=============================="

"====================================================="
