return {
	"nvim-telescope/telescope.nvim",
	enabled = true,
	branch = "0.1.x",
	cmd = "Telescope",
	dependencies = {
		{
			"nvim-lua/plenary.nvim",
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
				prompt_prefix = "🔍 ",
				layout_strategy = "flex",
				sorting_strategy = "ascending",
				selection_strategy = "reset",
				layout_config = {
					flex = {
						flip_columns = 120,
					},
					horizontal = {
						prompt_position = "top",
					},
					vertical = {
						prompt_position = "top",
					},
				},
				mappings = {
					i = {
						["<esc>"] = actions.close,
						["<C-j>"] = actions.move_selection_next,
						["<C-k>"] = actions.move_selection_previous,
					},
				},
				preview = {
					timeout = 100,
					treesitter = false,
				},
			},
			extensions = {
				fzf = {
					fuzzy = true, -- false will only do exact matching
					override_generic_sorter = true, -- override the generic sorter
					override_file_sorter = true, -- override the file sorter
					case_mode = "smart_case", -- or "ignore_case" or "respect_case", the default case_mode is "smart_case"
				},
			},
		})

		--extensions
		telescope.load_extension("fzf")
	end,
	keys = {
		{
			"<c-p>",
			mode = { "n", "v" },
			":Telescope find_files<CR>",
		},
		{
			"<c-f>",
			mode = { "n" },
			':Telescope grep_string search=""<CR>',
		},
		{
			"<c-f>",
			mode = { "v" },
			":Telescope grep_string()<cr>",
		},
		{
			"<leader>gr",
			mode = { "n", "v" },
			":Telescope lsp_references<CR>",
		},
	},
}
