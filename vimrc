" Undo anything the operating system's vimrc may have broken
" Source from Tom Ryder's vimrc: <https://sanctum.geek.nz/cgit/dotfiles.git>
runtime system.vim

" Configure generic preferred defaults
set nocompatible
set laststatus=2
set signcolumn=yes
set number
set visualbell
set autoindent
set backspace=indent,eol,start
set smarttab
set mouse=a


" It works
colorscheme ron

" ----- LightLine Plugin Configuration
" set lightline to include git-branch
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ,
      \             [ 'venv', 'readonly'] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'venv': 'virtualenv#statusline'
      \ },
      \ 'separator': { 'left': '', 'right': '' }, 
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

if has('autocmd')
    filetype plugin indent on
endif

if has('syntax') && !exists('g:syntax_on')
    syntax enable
endif

" Wrapping file
runtime wrapping.vim

