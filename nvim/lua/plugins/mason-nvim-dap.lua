return {
	"jay-babu/mason-nvim-dap.nvim",
	tag = "v2.x",
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
		automatic_installation = true,
		handlers = {
			function(config)
				require("mason-nvim-dap").default_setup(config)
			end,
		},
	},
}
