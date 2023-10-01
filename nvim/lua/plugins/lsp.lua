return {
	"VonHeikemen/lsp-zero.nvim",
	branch = "v2.x",
	dependencies = {
		-- LSP Support
		{ "neovim/nvim-lspconfig" }, -- Required
		{ "williamboman/mason.nvim" }, -- Optional
		{ "williamboman/mason-lspconfig.nvim" }, -- Optional

		-- Autocompletion
		{ "hrsh7th/nvim-cmp" }, -- Required
		{ "hrsh7th/cmp-nvim-lsp" }, -- Required
		{
			"L3MON4D3/LuaSnip",
			dependencies = { "rafamadriz/friendly-snippets" },
			version = "2.*",
			build = "make install_jsregexp",
		},
	},
	config = function()
		local lsp = require("lsp-zero").preset({})

		lsp.on_attach(function(_, bufnr)
			-- see :help lsp-zero-keybindings
			-- to learn the available actions
			lsp.default_keymaps({ buffer = bufnr })

			--lsp format, i dont like it too much, but i will let it stay here
			-- local group = vim.api.nvim_create_augroup("FormatAutogroup", { clear = true })
			-- if client.server_capabilities.documentFormattingProvider then
			-- 	vim.api.nvim_create_autocmd("BufWritePre", {
			-- 		callback = function()
			-- 			vim.lsp.buf.format({ async = false })
			-- 		end,
			-- 		group = group,
			-- 	})
			-- else
			-- 	vim.api.nvim_create_autocmd("BufWritePost", {
			-- 		command = "FormatWrite",
			-- 		group = group,
			-- 		--pattern = { "*.lua" },
			-- 	})
			-- end
		end)

		-- (Optional) Configure lua language server for neovim
		require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())

		lsp.setup()

		-- You need to setup `cmp` after lsp-zero
		local cmp = require("cmp")
		local cmp_action = require("lsp-zero").cmp_action()

		cmp.setup({
			mapping = {
				-- Ctrl+Space to trigger completion menu
				["<C-Space>"] = cmp.mapping.complete(),

				-- Navigate between snippet placeholder
				["<C-f>"] = cmp_action.luasnip_jump_forward(),
				["<C-b>"] = cmp_action.luasnip_jump_backward(),
			},
		})
	end,
}
