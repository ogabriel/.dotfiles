if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'danilo-augusto/vim-afterglow'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'yggdroot/indentline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'djoshea/vim-autoread'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'qpkorr/vim-bufkill'
Plug 'matze/vim-move'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sleuth'
Plug 'ervandew/supertab'
Plug 'junegunn/vim-slash'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'wesq3/vim-windowswap'
Plug 'mhinz/vim-signify'
Plug 'ryanoasis/vim-devicons'

call plug#end()

" ------ sensible defaults ------
let mapleader = "\<Space>"
set encoding=utf-8
set hlsearch
set incsearch
set number
set noswapfile
set hidden
set wrap!
set splitbelow
set splitright
set clipboard=unnamedplus
set visualbell
set mouse=a
set lazyredraw
if has('mouse_sgr')
    set ttymouse=sgr
endif

" ------ extra config ------
let g:buffergator_suppress_keymaps        = 1
let g:buffergator_mru_cycle_loop          = 1
let g:buffergator_viewport_split_policy   = 'R'
let g:NERDTreeWinSize                     = 40
let g:move_key_modifier                   = 'C'
let g:indentLine_char                     = '¦'

" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled  = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme='wombat'

" ------ mappings ------
" buffergator
nmap <leader>jj :BuffergatorMruCyclePrev<cr>
nmap <leader>kk :BuffergatorMruCycleNext<cr>
nmap <leader>bl :BuffergatorOpen<cr>

" vim move
vnoremap < <gv
vnoremap > >gv

" FZF
nnoremap <silent> <C-p> :FZF<CR>
nnoremap <silent> <C-f> :Ag<CR>

" better search
noremap <plug>(slash-after) zz

" nerdtree
nmap <leader>n  :NERDTree<cr>
map <C-n>       :NERDTreeToggle<cr>

" cgn
nnoremap <leader>x *``cgn
nnoremap <leader>X #``cgN

" ------ commands ------
" fix common typos like :Q or :W
command! -bang -nargs=* -complete=file E e<bang> <args>
command! -bang -nargs=* -complete=file W w<bang> <args>
command! -bang -nargs=* -complete=file Wq wq<bang> <args>
command! -bang -nargs=* -complete=file WQ wq<bang> <args>
command! -bang Wa wa<bang>
command! -bang WA wa<bang>
command! -bang Q q<bang>
command! -bang QA qa<bang>
command! -bang Qa qa<bang>

" ------ autocmd ------
" change cursor when insert mode
if !has('nvim')
  if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\e[5 q\<Esc>\\"
    let &t_SR = "\<Esc>Ptmux;\<Esc>\e[4 q\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\e[2 q\<Esc>\\"
  else
    let &t_SI = "\e[6 q"
    let &t_SR = "\e[4 q"
    let &t_EI = "\e[2 q"
  endif
endif

" rainbow parens
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

autocmd BufWritePre * %s/\s\+$//e

 " enable cursorline in the currently active window
augroup cursorline
    autocmd!
    autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
augroup END

" ------ colorscheme ------
colorscheme afterglow

"https://github.com/ryanoasis/nerd-fonts


