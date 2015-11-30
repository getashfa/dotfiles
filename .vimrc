"author: Ashfaque Ahammed
"
set nocompatible	"all commands taken as vim not vi
syntax enable		"enable syntax..highlightig with diffrent colos
set autoindent		"enable auto indendation after indent
set number			"enable line nuber
set relativenumber	"enble realative numbering for easier movement among lines
set ignorecase		"while searching
set smartcase		"while searching shows both cases unless searched for upper case
set incsearch		"incrimental highlighting for search reasults
set cursorline		"highlight the entire line of current cursor posistion
set noswapfile		"disable swap file
set nobackup		"disable backup file
set hlsearch		"Highlight all search matches
nnoremap <CR> :noh<CR><CR>	" Clear search matches by pressing enter 

colorscheme ashfaque
colorscheme kkruby
inoremap { {}<Esc>i
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i

if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window (for an alternative on Windows, see simalt below).
  set lines=999 columns=999
  set guifont=Monospace\ 12
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=100
  endif
endif
"automatically jumps to next line if exceeds
":set textwidth=80
":set wrapmargin=2
" size of a hard tabstop
set tabstop=4

" size of an "indent"
set shiftwidth=4

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
