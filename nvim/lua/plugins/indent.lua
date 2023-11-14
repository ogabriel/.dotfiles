return {
	"lukas-reineke/indent-blankline.nvim",
	event = { "BufReadPost", "BufNewFile" },
	version = "v2.20.8",
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
	config = function()
		require("indent_blankline").setup({
			show_current_context = true,
			show_current_context_start = false,
		})
	end,
}
