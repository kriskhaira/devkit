" Needed on some linux distros.
" see http://www.adamlowe.me/2009/12/vim-destroys-all-other-rails-editors.html
filetype off

" Pathogen: Load all plugins in the bundle directory
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()



set nowrap      "dont wrap lines
" set linebreak   "wrap lines at convenient points

set ignorecase  "Ignore case in searches
set nohlsearch  "Turn off highlighting when done searching:w

" Using ack instead of grep
" set grepprg=ack

" Use the OSX clipboard
set clipboard=unnamed

set expandtab
set softtabstop=2
set tabstop=2
set shiftwidth=2

" -- These were causing problems so I've disabled them --
" set autoindent
" set smartindent

" SET FILE SYNTAX TYPES

if has("autocmd")
  augroup module
    " Drupal *.module and *.install files.
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    " LESS CSS
    autocmd BufRead,BufNewFile *.less set filetype=css
  augroup END
endif

" if has("gui_running")
  " If the current buffer has never been saved, it will have no name,
	" call the file browser to save it, otherwise just save it.
" 	:map <silent> <C-S> :if expand("%") == ""<CR>:browse confirm w<CR>:else<CR>:confirm w<CR>:endif<CR>
" endif

" NERDTree settings
nnoremap <F5> :NERDTreeToggle<CR>
nnoremap <F9> :tabprevious<CR>
nnoremap <F10> :tabnext<CR>
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.swp$', '.DS_Store', '.git', '.svn']

set lines=50
set columns=150

syntax on
colorscheme southwest-fog
