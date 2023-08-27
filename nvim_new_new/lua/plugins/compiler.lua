return {
    "CRAG666/code_runner.nvim",
    dependencies = 'nvim-lua/plenary.nvim',
    config = function (_)
        require('code_runner').setup({
            filetype = {
                java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
                python = "python3 -u",
                typescript = "deno run",
                rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
                c = "cd $dir && gcc $fileName -lm && $dir/$fileNameWithoutExt",
                cpp = "cd $dir && g++ $fileName && ./a.out",
                perl = "perl -w",
            },
            focus = true,
            mode = 'term',
            sh = "zsh",
        })
    end,
    keys = {
        { '<leader>rc', ':RunCode<cr>' },
        { '<leader>rp', ':RunProject<cr>' },
    },
}
