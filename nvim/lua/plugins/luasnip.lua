return {
	"L3MON4D3/LuaSnip",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "2.*",
	build = "make install_jsregexp",
	config = function(_)
		require("luasnip.loaders.from_vscode").lazy_load()
		require("luasnip.loaders.from_snipmate").lazy_load()

		local luasnip = require("luasnip")

		vim.keymap.set({ "i", "s" }, "<C-j>", function()
			luasnip.jump(1)
		end, { silent = true })
		vim.keymap.set({ "i", "s" }, "<C-k>", function()
			luasnip.jump(-1)
		end, { silent = true })
	end,
}
