return {
	"windwp/nvim-ts-autotag",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
	ft = {
		"html",
		"xml",
	},
	config = function()
		require("nvim-ts-autotag").setup({
			filetypes = { "html", "xml" },
		})
	end,
}
