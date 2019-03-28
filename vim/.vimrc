" ------ load plugins ------
if filereadable(expand("~/.vimrc.plugins"))
  source ~/.vimrc.plugins
endif

" ------ sensible defaults ------
let mapleader = "\<Space>"
set hlsearch
set incsearch
set number
set noswapfile
set hidden
set wrap!
set splitbelow splitright
set clipboard=unnamedplus
set visualbell
set mouse=a
set lazyredraw
if has('mouse_sgr')
    set ttymouse=sgr
endif
set wildmode=longest,list,full
set noshowcmd noruler

" ------ extra config ------
let g:airline#extensions#tabline#enabled  = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_section_y = '%{strftime("%H:%M")}'
let g:airline_section_warning             = ''
let g:airline_detect_crypt                = 0
let g:buffergator_suppress_keymaps        = 1
let g:buffergator_mru_cycle_loop          = 1
let g:buffergator_viewport_split_policy   = 'R'
let g:NERDTreeWinSize                     = 30
let NERDTreeShowHidden                    = 1
let g:move_key_modifier                   = 'A'
let g:indentLine_char                     = '¦'
" for vim 7
" set t_Co=256

" for vim 8
if (has("termguicolors"))
   set termguicolors
endif

" ------ themes config ------
colorscheme onehalfdark
let g:airline_theme='onehalfdark'

" ------ mappings ------

" buffkill
map <C-x> :BD<cr>

" vim move
vnoremap < <gv
vnoremap > >gv

" buffergator
" nmap q :BuffergatorMruCyclePrev<cr>
" nmap w :BuffergatorMruCycleNext<cr>
" nmap <leader>bl :BuffergatorOpen<cr>
map q :bp<cr>
map w :bn<cr>

" FZF
nnoremap <silent> <C-f> :Ag<CR>
nnoremap <silent> <C-p> :FZF<CR>

" better search
noremap <plug>(slash-after) zz

" nerdtree
" nmap <C-n> :NERDTreeFocus<cr>n<c-w><c-p>
map <C-n>       :NERDTreeToggle<cr>

" go to line
:nnoremap <CR> G

" cgn
nnoremap <Leader>x *``cgn
nnoremap <Leader>X #``cgN

" goyo reading mode
map <C-b> :Goyo<CR>
let g:goyo_width=100
let g:goyo_height=95

" this is god work (ctrl c and v)
" instructions: install gvim and to that:
vnoremap <C-c> "*y :let @+=@*<CR>
map <C-v> "+P

" splits
noremap <silent> <A-v> :vsplit<CR>
map <silent> <A-h> :split<CR>

" ctrl + s to save files
noremap <silent> <C-S> :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>        <esc><C-O>:update<CR>

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

" ------ autocmd ------
" rainbow parens
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" trailing white space
autocmd BufWritePre * %s/\s\+$//e

 " when quitting a file, save the cursor position
augroup save_cursor_position
    autocmd!
    autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

 " enable cursorline in the currently active window
augroup cursorline
    autocmd!
    autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
augroup END

