return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
	opts = {},
	config = function(_)
		require("oil").setup()
	end,
}
