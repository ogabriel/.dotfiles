vim.cmd([[
    " paths
    com! RelativePath let @+=expand("%")
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

    nnoremap <leader>d "_d
    vnoremap <leader>d "_d
    vnoremap <leader>p "_dP
]])
