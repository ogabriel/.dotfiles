return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		{
			"nvim-lua/plenary.nvim",
			lazy = true,
		},
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				mappings = {
					i = {
						["<esc>"] = actions.close,
						["<C-j>"] = actions.move_selection_next,
						["<C-k>"] = actions.move_selection_previous,
					},
				},
			},
			extensions = {
				fzf = {
					fuzzy = true, -- false will only do exact matching
					override_generic_sorter = true, -- override the generic sorter
					override_file_sorter = true, -- override the file sorter
					case_mode = "smart_case", -- or "ignore_case" or "respect_case"
					-- the default case_mode is "smart_case"
				},
			},
		})

		--setup always later
		telescope.load_extension("fzf")
	end,
	keys = {
		{
			"<c-p>",
			mode = { "n", "v" },
			"<cmd>lua require('telescope.builtin').find_files()<cr>",
		},
		{
			"<c-f>",
			mode = { "n" },
			"<cmd>lua require('telescope.builtin').grep_string{ search = \"\" }<cr>",
		},
		{
			"<c-f>",
			mode = { "v" },
			"<cmd>lua require('telescope.builtin').grep_string()<cr>",
		},
	},
}
