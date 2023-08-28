vim.cmd [[
    " git
    au FileType gitcommit execute "normal! O" | startinsert 

    " paths
    com! RelativePath let @+=expand("%")
    com! GithubPath let @+=expand("%")
    com! AbsolutePath let @+=expand("%:p")
    com! FileName let @+=expand("%:t")
    com! PathName let @+=expand("%:p:h")

    " Json things
    com! FormatJSON :%!jq '.'
    com! MinifyJSON :%!jq -c

    " move lines of code vertically
    vnoremap < <gv
    vnoremap > >gv

    set splitbelow splitright

    command! -bar -nargs=1 -complete=file CD execute ":cd " . fnamemodify(<q-args>, ':p:h') .
]]
