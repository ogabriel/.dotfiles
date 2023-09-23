return {
	"jay-babu/mason-nvim-dap.nvim",
	event = "VeryLazy",
	dependecies = {
		"williamboman/mason.nvim",
		"mfussenegger/nvim-dap",
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
