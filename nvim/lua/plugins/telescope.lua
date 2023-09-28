return {
	"nvim-telescope/telescope.nvim",
	enabled = true,
	branch = "0.1.x",
	cmd = "Telescope",
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
		local putils = require("telescope.previewers.utils")

		telescope.setup({
			defaults = {
				prompt_prefix = "🔍 ",
				layout_strategy = "flex",
				layout_config = {
					flex = {
						flip_columns = 120,
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
					timeout = 50,
					filesize_limit = 1,
					treesitter = false,
					-- 1) Do not show previewer for certain files
					filetype_hook = function(filepath, bufnr, opts)
						-- you could analogously check opts.ft for filetypes
						local excluded = vim.tbl_filter(function(ending)
							return filepath:match(ending)
						end, {
							".*%.js",
							".*%.css",
							".*%.csv",
							".*%.toml",
						})
						if not vim.tbl_isempty(excluded) then
							putils.set_preview_message(
								bufnr,
								opts.winid,
								string.format("I don't like %s files!", excluded[1]:sub(5, -1))
							)
							return false
						end
						return true
					end,
					-- 2) Truncate lines to preview window for too large files
					filesize_hook = function(filepath, bufnr, opts)
						local path = require("plenary.path"):new(filepath)
						-- opts exposes winid
						local height = vim.api.nvim_win_get_height(opts.winid)
						local lines = vim.split(path:head(height), "[\r]?\n")
						vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, lines)
					end,
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
