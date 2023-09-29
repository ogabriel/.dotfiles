return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
	config = function()
		-- disable netrw at the very start of your init.lua
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		require("nvim-tree").setup({
			sort_by = "case_sensitive",
			view = {
				width = 40,
			},
			renderer = {
				group_empty = true,
				indent_markers = {
					enable = true,
				},
				icons = {
					git_placement = "after",
				},
			},
			filters = {
				dotfiles = false,
				git_ignored = false,
			},
			actions = {
				open_file = {
					quit_on_open = true,
					window_picker = {
						enable = true,
						picker = require("window-picker").pick_window,
					},
				},
			},
		})

		-- auto close
		local function is_modified_buffer_open(buffers)
			for _, v in pairs(buffers) do
				if v.name:match("NvimTree_") == nil then
					return true
				end
			end
			return false
		end

		vim.api.nvim_create_autocmd("BufEnter", {
			nested = true,
			callback = function()
				if
					#vim.api.nvim_list_wins() == 1
					and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil
					and is_modified_buffer_open(vim.fn.getbufinfo({ bufmodified = 1 })) == false
				then
					vim.cmd("quit")
				end
			end,
		})
	end,
	keys = {
		{ "<leader><leader>", ":NvimTreeToggle<cr>" },
		{ "<leader>c", ":NvimTreeFindFile<cr>" },
	},
}
