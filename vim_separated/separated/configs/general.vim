syntax on
filetype plugin indent on

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

" performance on syntax hightlighting
set synmaxcol=140
syntax sync minlines=200

set mouse=a " You can select with the mouse

" set lazyredraw
if has('mouse_sgr')
    set ttymouse=sgr
endif

set wildmenu
set wildmode=longest:list,full  " show the possible commants that you can use in the command bar

set regexpengine=1     "The new engine replaced with old (suggested on vi.SE)

" buffkill
map <C-x> :BD<cr>

" vim move
vnoremap < <gv
vnoremap > >gv

" move buffers
map q :bp<cr>
map w :bn<cr>

" NERDTree
let g:NERDTreeWinSize                     = 30
let NERDTreeShowHidden                    = 1
map <leader><leader> :NERDTreeToggle<CR>
map <leader>c :NERDTreeFind<CR>

" Synastics
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Vim-UtilSnips Configuration
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical" " If you want :UltiSnipsEdit to split your window.

" goyo reading mode
map <C-b> :Goyo<CR>
let g:goyo_width=100
let g:goyo_height=95

" Ag and FZF
nnoremap <silent> <C-f> :Ag<CR>
nnoremap <silent> <C-p> :FZF<CR>

" ctrl + s to save files
noremap <silent> <C-S> :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>        <esc><C-O>:update<CR>

" trailing white space
autocmd BufWritePre * %s/\s\+$//e

 " when quitting a file, save the cursor position
augroup save_cursor_position
    autocmd!
    autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

" File information
com! RelativePath let @+=expand("%")
com! AbsolutePath let @+=expand("%:p")
com! FileName let @+=expand("%:t")
com! PathName let @+=expand("%:p:h")

" Json things
com! FormatJSON :%!jq '.'
com! MinifyJSON :%!jq -c

" Deoplete
let g:deoplete#enable_at_startup = 1
