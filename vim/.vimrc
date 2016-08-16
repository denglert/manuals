
" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2008 Dec 17
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

" MANUAL ENTRIES 
"David's commands"

set langmenu=en_US.UTF-8    " sets the language of the menu (gvim)
"language en                 " sets the language of the messages / ui (vim)


" Gnuplot Syntax highlighting is enabled for files with .gnu extensions 
syntax on
filetype on
au BufNewFile,BufRead *.gnu set filetype=gnuplot

" CPP template
command Cpptempl 0read ~/.vim/template/cpp.cc | set syntax=cpp | goto21 | startinsert 
command R2gpp read ~/.vim/template/R2gpp.cc | set syntax=cpp
command Gplot 0read ~/.vim/template/gnuplot | set syntax=gnuplot

" COLOR SCHEME
color delek

" Show Row number with grey colour
set number
"highlight LineNr ctermfg=yellow  ctermbg=black

" Key Mappings

" Write and compile autocommand
set makeprg=g++\ -o\ %<\ %
command Wc execute ":w | !g++\ -o\ ../bin/%<\ % "

" Run the binary of the compiled source file
command Rb execute "! ../bin/%<"

" Tabular space length
set tabstop=3

" Set working directory to the currently edited file
command Cwd execute ":cd %:p:h"

" Swap file storage
if isdirectory($HOME . '/.vim/swap') == 0
 :silent !mkdir -p ~/.vim/swap >/dev/null 2>&1
endif
set directory=./.vim-swap//
set directory+=~/.vim/swap//
set directory+=~/tmp//
set directory+=.

set backupdir=~/.vim/backup/

" Exit highlight mode when pressing the <ESC> button
nnoremap <silent> <esc> :noh<cr><esc>

"Compatibility with tmux
map <Esc>[B <Down> 

if &term =~ '^screen'
	execute "set t_kN=^[[6;*~"
	execute "set t_kP=^[[5;*~"
endif

nmap -= i// Debuggg <CR><BS><BS><BS>>std::cerr << " " << std::endl;<Esc>6bli
imap -= // Debuggg <CR><BS><BS><BS>std::cerr << " " << std::endl;<Esc>6bli

"Don't fill in the buffer with that text that has been restored

" Required for Vundle the VIM Bundle
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'ervandew/supertab'
Bundle 'easymotion/vim-easymotion'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-obsession'
"Bundle 'scrooloose/nerdcommenter'
"Bundle 'msanders/snipmate.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'jeffkreeftmeijer/vim-numbertoggle'

" Solarized
"syntax enable
"set background=dark
"se t_Co=16
"colorscheme solarized
colorscheme delek

nmap <F4> :!make PIDSetup<CR>

" Easymotion key binding 
nmap s <Plug>(easymotion-s2)
vmap s <Plug>(easymotion-s2)

" NERDTree tab open at the end FIX
" move tabs to the end for new, single buffers (exclude splits)
autocmd BufNew * if winnr('$') == 1 | tabmove99 | endif

" Fixes weird characters in NERDTREE
let g:NERDTreeDirArrows=0

nmap <F2> :NERDTreeToggle<cr>

filetype plugin indent on

" Statusline
set laststatus=2
set statusline=%f\ \ \ \ %l\:%c "tail of the filename

" Custom key mapping
:imap jj <Esc>

nmap 9ö istd::cerr << " " << std::endl;<Esc>6bli
imap 9ö  std::cerr << " " << std::endl;<Esc>6bli

nmap 0p :!gnuplot %
nmap 0l :!latexmk -pdf %
nmap 0k :!tdr --style=note b AN
nmap 0i :!latexmk -f -pdf tdk.tex
nmap öü :!latexmk -pdf thesis.tex

set tw=80

" Increment numbers macro
function! Incr()
  let a = line('.') - line("'<")
  let c = virtcol("'<")
  if a > 0
    execute 'normal! '.c.'|'.a."\<C-a>"
  endif
  normal `<
endfunction
vnoremap <C-i> :call Incr()<CR>
