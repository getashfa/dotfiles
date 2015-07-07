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
colorscheme ashfaque	"custom colorschem	

inoremap { {}<Esc>i
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
