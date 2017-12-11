set nocompatible

" Vundle config.
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'joshdick/onedark.vim'
Plugin 'mbbill/undotree'
Plugin 'martinda/Jenkinsfile-vim-syntax'

call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" to install from cmd line:
" vim +PluginInstall +qall
" Put your non-Plugin stuff after this line

colorscheme onedark
let g:airline_theme='molokai'

" syntax coloring
syntax on

" line numbers
set number

" automatically change pwd to dir of current opened file
set autochdir

" store all temp files in one organized place
" create directory if needed
if !isdirectory($HOME.'/.vim/files') && exists('*mkdir')
  call mkdir($HOME.'/.vim/files')
  call mkdir($HOME.'/.vim/files/swap')
  call mkdir($HOME.'/.vim/files/backup')
  call mkdir($HOME.'/.vim/files/undo')
  call mkdir($HOME.'/.vim/files/info')
endif
" backup files
set backup
set backupdir   =$HOME/.vim/files/backup/
set backupext   =-vimbackup
" swap files
set directory   =$HOME/.vim/files/swap//
set updatecount =100
" undo files
set undofile
set undodir     =$HOME/.vim/files/undo/
" viminfo files
set viminfo     ='100,n$HOME/.vim/files/info/viminfo

" enable search highlighting
set hls
" enable hidden buffers
set hidden
" vertical split by default with :diffsp cmd
set diffopt=vertical

" netrw config for Explore customization
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END netrw changes for Explore
