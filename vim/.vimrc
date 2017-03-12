syntax enable
set number
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set clipboard=unnamedplus

set exrc
set secure

set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

let g:ycm_global_ycm_extra_conf = '/usr/share/vim/vimfiles/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

let g:ycm_confirm_extra_conf = 0

let g:ycm_server_python_interpreter = 'python2'
