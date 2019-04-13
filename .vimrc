call plug#begin('~/.vim/plugged')

Plug 'liuchengxu/space-vim-theme'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'

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
