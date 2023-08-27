return {
	'nvim-telescope/telescope.nvim', tag = '0.1.2',
	dependencies = { 'nvim-lua/plenary.nvim' },

	config = function(plugin)
		require('onedark').setup {
			style = 'darker'
		}

		local builtin = require('telescope.builtin')
		local telescope_builtin = require('telescope.builtin')

		vim.keymap.set('n', '<C-p>', builtin.find_files, {})
		vim.keymap.set('n', '<C-f>', builtin.live_grep, {})
		vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
	end,
}
