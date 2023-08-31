return {
	{
		"tpope/vim-fugitive",
		keys = {
			{ "<leader>gs", ":Git<cr>" },
			{ "<leader>ga", ":Gwrite<cr>" },
			{ "<leader>gd", ":Git diff<cr>" },
			{ "<leader>gc", ":Git commit<cr>" },
			{ "<leader>gf", ":Gwrite <bar> :Git commit --fixup HEAD -n <cr>" },
			{ "<leader>gb", ":Git blame<cr>" },
			{ "<leader>gd", ":GDelete<cr>" },
			{ "<leader>gu", ":Git push<cr>" },
			{ "<leader>gp", ":Git pull<cr><cr>" },
			--its not working
			-- { "<leader>gm", ":GMove %<cr>" },
			-- { "<leader>gr", ":GRename %<cr>" },
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
			},
			{
				"<leader>grc",
				'<cmd>lua require"gitlinker".get_buf_range_url("n", {action_callback = require"gitlinker.actions".copy_to_clipboard})<cr>',
			},
		},
	},
}
