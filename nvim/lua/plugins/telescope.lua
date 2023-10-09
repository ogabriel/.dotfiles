return {
	"nvim-telescope/telescope.nvim",
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
						flip_columns = 180,
						prompt_position = "top",
					},
					horizontal = {
						prompt_position = "top",
					},
					vertical = {
						prompt_position = "top",
						mirror = true,
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
					treesitter = {
						disable = {
							"javascript",
							"css",
							"scss",
						},
					},
				},
			},
			vimgrep_arguments = {
				"rg",
				"--color=never",
				"--no-heading",
				"--with-filename",
				"--line-number",
				"--column",
				--custom
				"--smart-case",
				"--threads=0",
				"--max-columns=512",
				"--hidden",
				"--trim",
			},
			file_ignore_patterns = {
				"node_modules",
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
			'<CMD>lua require("telescope.builtin").find_files({ hidden=true })<CR>',
		},
		{
			"<c-f>",
			mode = { "n" },
			'<CMD>lua require("telescope.builtin").grep_string({ word_match = "-w", only_sort_text = true, search = "" })<CR>',
		},
		{
			"<c-f>",
			mode = { "v" },
			'<CMD>lua require("telescope.builtin").grep_string()<CR>',
		},
		{
			"<leader>f",
			mode = { "n" },
			'<CMD>lua require("telescope.builtin").live_grep()<CR>',
		},

		{
			"<leader>gr",
			mode = { "n", "v" },
			":Telescope lsp_references<CR>",
		},
	},
}
