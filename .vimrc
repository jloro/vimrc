call plug#begin('~/.vim/plugged')

Plug 'liuchengxu/space-vim-theme'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'pandark/42header.vim'
Plug 'othree/vim-autocomplpop'
Plug 'vim-scripts/L9'

call plug#end()

set background=dark
colorscheme space_vim_theme
let g:airline_theme='deus'

" status line
set laststatus=2                 " always display the status line
set shortmess=atI                " short messages to avoid scrolling
set ruler                        " show the cursor position all the time
set showcmd                      " display incomplete commands

"Set number line
set number

"AutoIndent
set autoindent      "Keep indentation from previous line

" for insert mode
inoremap <S-Tab> <C-d>

"for visual mode
vnoremap <Tab> >gV
vnoremap <S-Tab> <gV

"Show all command
set showcmd
set showmode

"Show Title
set title
set titleold=

"Hightlight line cursor
set cursorline

"Disable beeping
set visualbell

"Speed Redraw
set lazyredraw
set wildmenu                            " Use wildmenu auto completion
set wildmode=list:longest       " Set options for auto completion
set complete=.,w,b,t,u
set showfulltag                         " Show whole tag, not just function name, when
                                                        " autocompleting by tag
"One clipboard
set clipboard=unnamed

"Set mouse
set mouse=a

"AutoCompletMenu
set completeopt=longest,menuone

"Syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_c_config_file = '.syntastic_c_config'
let g:syntastic_c_compiler_options = '-Werror -Wextra -Wall'

"NerdTree
map <C-g> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endi
autocmd BufEnter * lcd %:p:h

nmap <f1> :FortyTwoHeader<CR>
set backspace=indent,eol,start
nmap <bs> <bs>

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" On pressing tab, insert 4 spaces
set expandtab
" when indenting with '>', use 4 spaces width
set shiftwidth=4
set softtabstop=4
set smartindent
set cindent

set colorcolumn=80

" Search settings.
" Highlight search results.
set hlsearch
" Incremental search: find as you type.
set incsearch

