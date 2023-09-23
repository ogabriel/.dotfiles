return {
	"jay-babu/mason-nvim-dap.nvim",
	dependecies = {
		"williamboman/mason.nvim",
	},
	config = function(opts)
		require("mason").setup()
		require("mason-nvim-dap").setup(opts)
	end,
	opts = {
		ensure_installed = {
			"elixir",
			"delve",
		},
	},
}
