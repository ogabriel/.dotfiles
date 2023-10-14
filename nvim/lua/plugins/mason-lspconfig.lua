return {
	"williamboman/mason-lspconfig.nvim",
	config = function(opts)
		require("mason").setup()
		require("mason-lspconfig").setup(opts)
	end,
	opts = {
		ensure_installed = {
			"elixirls",
			"gopls",
			"lua_ls",
			"rust_analyzer",
			"solargraph",
		},
	},
}
