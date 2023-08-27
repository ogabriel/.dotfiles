return {
	--plugin that is supported by treesitter
	"navarasu/onedark.nvim",
	config = function(plugin)
		vim.opt.termguicolors = true
		require('onedark').setup {
    		style = 'darker'
		}
		require('onedark').load()
	end,
}