return {
	"rgroli/other.nvim",
	config = function(opts)
		require("other-nvim").setup(opts)
	end,
	opts = {
		mappings = {
			"rails",
			"golang",
		},
	},
}
