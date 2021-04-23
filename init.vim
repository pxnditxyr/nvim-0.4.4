"set directory
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

"files
so ~\.config/nvim/.vim/plugins.vim
so ~\.config/nvim/.vim/plugin-config.vim
so ~\.config/nvim/.vim/maps.vim

set list

syntax enable

"show line number and relative number
set nu
set rnu
set numberwidth=1 "better show the numbers

"copy and paste with the mouse
set mouse=a

"enable copy and paste 'yy, p'
" set clipboard=unnamed

"shows the pressed
set showcmd

"Show current column
set ruler

"perform indent
set smartindent

"does not create external files
set noswapfile
set nobackup

"Seaching
"moves to result as you type
set incsearch
"distinguish between upper and lower case when searching
set smartcase
"Highlight matches
set hlsearch
"Unless they contain at least one capital letter
set ignorecase


"tab of 4 spaces
set noexpandtab
set tabstop=4 shiftwidth=4
"Scheme
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
"set background=dark

"highlight Normal ctermbg=NONE
set laststatus=2
set noshowmode

" React
"set backupcopy=yes

"Fonts
set guifont=Hurmit_Nerd_Font_Mono:h12

"When a file is edited its indent file is loaded
filetype plugin indent on

"Encoding
set encoding=utf-8

" For wsl
set clipboard+=unnamedplus

au TextYankPost * call system('termux-clipboard-set &', @")
function Paste(p)
    let sysclip=system('termux-clipboard-get')
    if sysclip != @"
        let @"=sysclip
    endif
    return a:p
endfunction
noremap <expr> p Paste('p')
noremap <expr> P Paste('P')

" let g:clipboard = {
"       \   'name': 'win32yank-wsl',
"       \   'copy': {
"       \      '+': 'win32yank.exe -i --crlf',
"       \      '*': 'win32yank.exe -i --crlf',
"       \    },
"       \   'paste': {
"       \      '+': 'win32yank.exe -o --lf',
"       \      '*': 'win32yank.exe -o --lf',
"       \   },
"       \   'cache_enabled': 0,
"       \ }
