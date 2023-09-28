return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
	config = function(opts)
		require("oil").setup(opts)
	end,
	opts = {
		view_options = {
			-- Show files and directories that start with "."
			show_hidden = true,
			-- This function defines what is considered a "hidden" file
			is_hidden_file = function(name, bufnr)
				return vim.startswith(name, ".")
			end,
			-- This function defines what will never be shown, even when `show_hidden` is set
			is_always_hidden = function(name, bufnr)
				return false
			end,
		},
	},
}
