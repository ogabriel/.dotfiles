Plug 'tpope/vim-surround'                               " better brackets
Plug 'tpope/vim-commentary'                             " comments # use gc to comment lines and selected text
" Plug 'tpope/vim-repeat'                                 " repeat more commands with '.'
Plug 'tpope/vim-sleuth'                                 " automatically adjusts 'shiftwidth' and 'expandtab' heuristically based on the current file

" Plug 'terryma/vim-multiple-cursors'                     " multiple cursors like in ST
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'Raimondi/delimitMate', { 'on': [] }               " automatic closing of quotes, parenthesis, brackets, etc
Plug 'terryma/vim-expand-region'                        " change visual selection by using '+' / '-'
Plug 'nathanaelkane/vim-indent-guides'                  " indent columns
Plug 'w0rp/ale'                                         " linter, spots errors in all kinds of lines of the code
Plug 'junegunn/goyo.vim'                                " puts the current file in the center of screen
Plug 'jeetsukumaran/vim-buffergator'                    " allow you to visualize all your open files
Plug 'tpope/vim-unimpaired'                             " it can create new lines with ]
Plug 'SirVer/ultisnips'                                 " fast snippets

" navigation
Plug 'scrooloose/nerdtree'                              " file tree
Plug 'kopischke/vim-fetch'                              " open file with line and column number
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " fuzzy search
Plug 'junegunn/fzf.vim'
Plug 'matze/vim-move'                                   " move lines around
Plug 'qpkorr/vim-bufkill'                               " close buffers without breaking splits
Plug 'junegunn/vim-slash'
Plug 'mhinz/vim-startify'                               " creates a start screen for vim

" files
Plug 'tpope/vim-eunuch'                                 " helpers for UNIX shell commands (mkdir, rename, etc.)

" git
Plug 'tpope/vim-fugitive'                               " git commands
Plug 'airblade/vim-gitgutter'                           " git gutter

" for all languagens
Plug 'vim-syntastic/syntastic'

" ruby / rails
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }             " ruby
Plug 'tpope/vim-endwise', { 'for': 'ruby', 'on': [] }   " auto end
Plug 'tpope/vim-rails', { 'for': 'ruby', 'on': [] }   " auto end
Plug 'thoughtbot/vim-rspec', { 'for': 'ruby' }          " run rspec
" RSpec.vim mappings
" map <Leader>t :call RunCurrentSpecFile()<CR>
" map <Leader>s :call RunNearestSpec()<CR>
" map <Leader>l :call RunLastSpec()<CR>
" map <Leader>a :call RunAllSpecs()<CR>
" Plug 'tpope/vim-bundler', { 'for': 'ruby' }             " bundle commands and smart ctags

" elixir
Plug 'mhinz/vim-mix-format', { 'for': ['elixir', 'eelixir'] }
Plug 'elixir-lang/vim-elixir', { 'for': ['elixir', 'eelixir'] }

" rust
Plug 'rust-lang/rust.vim', { 'for': ['rust', 'rlib'] }

" latex
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

" syntaxes and languages
Plug 'shime/vim-livedown', { 'for': 'markdown' }        " real time markdown editing
