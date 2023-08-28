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
				perl = "perl -w",
			},
			focus = true,
			mode = "term",
			sh = "zsh",
		})
	end,
	cmd = { "RunCode", "RunProject" },
	keys = {
		{ "<leader>rc", ":RunCode<cr>" },
		{ "<leader>rp", ":RunProject<cr>" },
	},
}
