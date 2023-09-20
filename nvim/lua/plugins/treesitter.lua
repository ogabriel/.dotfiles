return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		vim.opt.foldmethod = "expr"
		vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
		vim.opt.foldlevel = 10

		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"bash",
				"c",
				"rust",
				"go",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"erlang",
				"elixir",
				"heex",
				"eex",
				"ruby",
				"javascript",
				"html",
				"css",
				"csv",
				"yaml",
				"dockerfile",
				"surface",
			},
			sync_install = false,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = {
				enable = true,
			},
		})
	end,
}
