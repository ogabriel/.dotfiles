return {
	{
		"airblade/vim-gitgutter",
		event = { "BufReadPost", "BufNewFile" },
		filetype_exclude = {
			"help",
			"alpha",
			"dashboard",
			"neo-tree",
			"Trouble",
			"lazy",
			"mason",
			"notify",
			"toggleterm",
			"lazyterm",
		},
	},
	{
		"tpope/vim-fugitive",
		lazy = false,
		config = function()
			vim.cmd("command! Gdelete GDelete")
			vim.cmd("command! Gmove GMove")
			vim.cmd("command! Grename GRename")
		end,
		keys = {
			{ "<leader>gs", ":Git<cr>" },
			{ "<leader>ga", ":Gwrite<cr>" },
			{ "<leader>gd", ":Git diff<cr>" },
			{ "<leader>gc", ":Git commit --quiet<cr>" },
			{ "<leader>gf", ":Gwrite <cr><bar> :Git commit --fixup HEAD -n <cr>" },
			{ "<leader>gb", ":Git blame<cr>" },
			{ "<leader>gd", ":GDelete<cr>" },
			{ "<leader>gu", ":Git push --quiet<cr>" },
			{ "<leader>gp", ":Git pull --quiet<cr>" },
		},
	},
	{
		"ruifm/gitlinker.nvim",
		dependencies = "nvim-lua/plenary.nvim",
		config = function(_)
			require("gitlinker").setup()
		end,
		keys = {
			{
				"<leader>grb",
				'<cmd>lua require"gitlinker".get_buf_range_url("n", {action_callback = require"gitlinker.actions".open_in_browser})<cr>',
				{ silent = true },
			},
			{
				"<leader>grb",
				mode = { "v" },
				'<cmd>lua require"gitlinker".get_buf_range_url("v", {action_callback = require"gitlinker.actions".open_in_browser})<cr>',
			},
			{
				"<leader>grc",
				'<cmd>lua require"gitlinker".get_buf_range_url("n", {action_callback = require"gitlinker.actions".copy_to_clipboard})<cr>',
			},
			{
				"<leader>grc",
				mode = { "v" },
				'<cmd>lua require"gitlinker".get_buf_range_url("v", {action_callback = require"gitlinker.actions".copy_to_clipboard})<cr>',
				{ silent = true },
			},
		},
	},
}
