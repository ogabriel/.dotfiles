return {
	"tpope/vim-fugitive",
	keys = {
		{ "<leader>gs", ":Git<cr>" },
		{ "<leader>ga", ":Gwrite<cr>" },
		{ "<leader>gd", ":Git diff<cr>" },
		{ "<leader>gc", ":Git commit<cr>" },
		{ "<leader>gb", ":Git blame<cr>" },
		{ "<leader>gd", ":GDelete<cr>" },
		{ "<leader>gu", ":Git push<cr>" },
		{ "<leader>gp", ":Git pull<cr>" },
		--its not working
		{ "<leader>gm", ":GMove %<cr>" },
		{ "<leader>gr", ":GRename %<cr>" },
	},
}
