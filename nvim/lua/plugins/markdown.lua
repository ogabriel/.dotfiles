return {
	{
		-- auto-bullets for markdown-like filetypes
		"dkarter/bullets.vim",
		config = function()
			vim.g.bullets_delete_last_bullet_if_empty = 1

			vim.g.bullets_enabled_file_types = {
				"markdown",
				"text",
				"gitcommit",
				"scratch",
			}
		end,
		ft = {
			"markdown",
			"text",
			"gitcommit",
			"scratch",
		},
	},
	{
		"iamcco/markdown-preview.nvim",
		ft = "markdown",
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
		config = function()
			vim.g.mkdp_preview_options = {
				disable_sync_scroll = 0,
			}
		end,
		keys = {},
	},
}
