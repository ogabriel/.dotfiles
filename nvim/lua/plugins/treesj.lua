return {
	"Wansmer/treesj",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("treesj").setup({
			use_default_keymaps = false,
			on_error = nil,
		})
	end,
	keys = {
		{ "<leader>t", "<CMD>lua require('treesj').toggle()<CR>" },
		{ "<leader>s", "<CMD>lua require('treesj').split()<CR>" },
		{ "<leader>j", "<CMD>lua require('treesj').join()<CR>" },
	},
}
