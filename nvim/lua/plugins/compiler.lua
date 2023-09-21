-- vim.keymap.set('n', '<leader>r', ':RunCode<CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<leader>rf', ':RunFile<CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<leader>rft', ':RunFile tab<CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<leader>rp', ':RunProject<CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<leader>rc', ':RunClose<CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<leader>crf', ':CRFiletype<CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<leader>crp', ':CRProjects<CR>', { noremap = true, silent = false })

return {
	"CRAG666/code_runner.nvim",
	config = function(_)
		require("code_runner").setup({
			filetype = {
				java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
				elixir = "cd $dir && mix compile",
				python = "python3 -u",
				typescript = "deno run",
				rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
				c = "cd $dir && gcc $fileName -lm && $dir/$fileNameWithoutExt",
				cpp = "cd $dir && g++ $fileName && ./a.out",
				go = "cd $dir && go run $fileName",
				perl = "perl -w",
			},
			focus = false,
			mode = "term",
			sh = "zsh",
		})
	end,
	cmd = { "RunCode", "RunProject" },
	keys = {
		{ "<leader>r", ":RunCode<cr>" },
		{ "<leader>rf", ":RunFile<cr>" },
		{ "<leader>rft", ":RunFile tab<cr>" },
		{ "<leader>rp", ":RunProject<cr>" },
		{ "<leader>rc", ":RunClose<cr>" },
	},
}
