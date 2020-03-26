colorscheme onehalfdark
let g:airline_theme='onehalfdark'

let g:airline#extensions#tabline#enabled  = 1
let g:airline#extensions#tabline#fnamemod = ':t'
" let g:airline_section_y = '%{strftime("%H:%M")}'
let g:airline_section_warning             = ''
let g:airline_detect_crypt                = 0

" set term colors for True Colors on vim
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Those bars that appear when there are tabs
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=white ctermbg=234
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=lightgrey ctermbg=235
