return {
	"williamboman/mason-lspconfig.nvim",
	lazy = false,
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"clangd",
				"elixirls",
				"gopls",
				"lua_ls",
				"rust_analyzer",
				"solargraph",
				"pyright",
				"tsserver",
				"csslsp",
				"html",
			},
		})
	end,
}
