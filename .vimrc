"author: Ashfaque Ahammed
"

" Testing pathogen
execute pathogen#infect() 

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
"colorscheme kkruby
"colorscheme oceanlight
colorscheme monokai


let g:jellybeans_use_lowcolor_black = 0

" Maping of auto-pairs
""colorscheme jellybeans
""inoremap { {}<Esc>i
""inoremap ( ()<Esc>i
""inoremap [ []<Esc>i
""inoremap " ""<Esc>i
""inoremap ' ''<Esc>i
""inoremap < <><Esc>i

if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window (for an alternative on Windows, see simalt below).
  set lines=999 columns=999
  set guifont=Monospace\ 11
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
" ===========================================
" Aa syntax highlighting
" ===========================================
autocmd FileType aa call FT_aa()
function! FT_aa()
    set autoindent
    set number
    set syntax=aa
 endfunction
"recognize an aa file from its extension
au BufRead,BufNewFile *.aa set filetype=aa
" ===========================================
"Gvim setting font size
" ===========================================
let s:pattern = '^\(.* \)\([1-9][0-9]*\)$'
let s:minfontsize = 6
let s:maxfontsize = 16
function! AdjustFontSize(amount)
  if has("gui_gtk2") && has("gui_running")
    let fontname = substitute(&guifont, s:pattern, '\1', '')
    let cursize = substitute(&guifont, s:pattern, '\2', '')
    let newsize = cursize + a:amount
    if (newsize >= s:minfontsize) && (newsize <= s:maxfontsize)
      let newfont = fontname . newsize
      let &guifont = newfont
    endif
  else
    echoerr "You need to run the GTK2 version of Vim to use this function."
  endif
endfunction

function! LargerFont()
  call AdjustFontSize(1)
endfunction
command! LargerFont call LargerFont()

function! SmallerFont()
  call AdjustFontSize(-1)
endfunction
command! SmallerFont call SmallerFont()
"========= Gvim full screen mode with F11=========="
map <silent> <F11>
\    :call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")<CR>
" ===========================================
set pastetoggle=<F10> "toggle paste/nopaste with F10 key
