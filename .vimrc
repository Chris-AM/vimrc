set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set laststatus=2


call plug#begin('~/.vim/plugged')

" Themes "
Plug 'morhetz/gruvbox'

" IDE "
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

call plug#end()


colorscheme gruvbox
let g:gruvbox_contrast_light= "hard"
let NERDTreeQuitOnOpen=1
let mapleader = " "

nmap <Leader>s <Plug>(easymotion-s2)
nmap nt :NERDTreeFind<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>wq :wq<CR>

" EMMET "
let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','
