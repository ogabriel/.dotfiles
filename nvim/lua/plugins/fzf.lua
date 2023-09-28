return {
	"ibhagwan/fzf-lua",
	enabled = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		{ "junegunn/fzf", build = "./install --bin" },
	},
	config = function()
		-- calling `setup` is optional for customization
		require("fzf-lua").setup({})
	end,
	keys = {
		{
			"<c-p>",
			mode = { "n", "v" },
			":FzfLua files<CR>",
		},
		{
			"<c-f>",
			mode = { "n" },
			":FzfLua grep_project<CR>",
		},
		{
			"<c-f>",
			mode = { "v" },
			":FzfLua grep_visual<cr>",
		},
	},
}
