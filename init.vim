"set directory
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" Only Dvorak converter keys
" set langmap='q,\\,w,.e,pr,yt,fy,gu,ci,ro,lp,/[,=],aa,os,ed,uf,ig,dh,hj,tk,nl,s\\;,-',\\;z,qx,jc,kv,xb,bn,mm,w\\,,v.,z/,[-,]=,\"Q,<W,>E,PR,YT,FY,GU,CI,RO,LP,?{,+},AA,OS,ED,UF,IG,DH,HJ,TK,NL,S:,_\",:Z,QX,JC,KV,XB,BN,MM,W<,V>,Z?

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

"shows the pressed
set showcmd

"Show current column
set ruler

"perform indent
set smartindent

"New
set cursorline
" set sw=2

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
set expandtab
set tabstop=4 shiftwidth=4

"Scheme
colorscheme OceanicNext

if (has("termguicolors"))
	set termguicolors
endif
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
" let g:airline_theme='oceanicnext'
" let g:gruvbox_contrast_dark = "hard"

"highlight Normal ctermbg=NONE
set laststatus=2
set noshowmode

" React
"set backupcopy=yes

" Long lines
set nowrap

"Fonts
set guifont=Hurmit_Nerd_Font_Mono:h12

"When a file is edited its indent file is loaded
filetype plugin indent on

"Encoding
set encoding=utf-8

" For wsl
set clipboard+=unnamedplus

let g:clipboard = {
      \   'name': 'win32yank-wsl',
      \   'copy': {
      \      '+': 'win32yank.exe -i --crlf',
      \      '*': 'win32yank.exe -i --crlf',
      \    },
      \   'paste': {
      \      '+': 'win32yank.exe -o --lf',
      \      '*': 'win32yank.exe -o --lf',
      \   },
      \   'cache_enabled': 0,
      \ }
