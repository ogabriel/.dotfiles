return { 
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPost", "BufNewFile" },
    filetype_exclude = {
      "help",
      "alpha",
      "dashboard",
      "neo-tree",
      "Trouble",
      "lazy",
      "mason",
      "notify",
      "toggleterm",
      "lazyterm",
    },
    config = function ()
        require("indent_blankline").setup {
            -- for example, context is off by default, use this to turn it on
            show_current_context = true,
            show_current_context_start = true,
        }

        -- vim.cmd [[highlight IndentBlanklineIndent1 guibg=#1f1f1f gui=nocombine]]
        -- vim.cmd [[highlight IndentBlanklineIndent2 guibg=#1a1a1a gui=nocombine]]
        --
        -- require("indent_blankline").setup {
        --     char = "",
        --     char_highlight_list = {
        --         "IndentBlanklineIndent1",
        --         "IndentBlanklineIndent2",
        --     },
        --     space_char_highlight_list = {
        --         "IndentBlanklineIndent1",
        --         "IndentBlanklineIndent2",
        --     },
        --     show_trailing_blankline_indent = false,
        -- }
    end
}
