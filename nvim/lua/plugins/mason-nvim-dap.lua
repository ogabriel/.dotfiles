return {
	"jay-babu/mason-nvim-dap.nvim",
	dependecies = {
		"williamboman/mason.nvim",
		"mfussenegger/nvim-dap",
	},
	config = function()
		require("mason").setup()
		require("mason-nvim-dap").setup({
			ensure_installed = {
				"elixir",
				"delve",
			},
			automatic_installation = true,
			--only use mason-nvim-dap to install things
			handlers = nil,
		})
	end,
}
