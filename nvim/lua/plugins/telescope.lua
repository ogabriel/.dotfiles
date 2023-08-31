return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.2",
	dependencies = {
		{ "nvim-lua/plenary.nvim", lazy = true },
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			lazy = true,
			build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
		},
	},
	config = function(_)
		local actions = require("telescope.actions")

		require("telescope").setup({
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

		require("telescope").load_extension("fzf")
	end,
	keys = {
		{ "<c-p>", mode = { "n", "o", "i" }, ":Telescope find_files<cr>" },
		{ "<c-f>", mode = { "n", "o", "i" }, ":Telescope grep_string search=<cr>" },
		-- { "<leader>gf", "<cmd>lua require('telescope.builtin').git_files()<cr>" },
	},
}
