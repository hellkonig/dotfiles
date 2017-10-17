syntax enable
set number
set tabstop=4 expandtab shiftwidth=4 
set clipboard=unnamedplus
set smarttab
set autoindent
set smartindent

set exrc
set secure

let g:ycm_global_ycm_extra_conf = '/usr/share/vim/vimfiles/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

let g:ycm_confirm_extra_conf = 0

let g:ycm_server_python_interpreter = 'python2'
 
nnoremap <silent> <F5> :!clear;python %<CR>
