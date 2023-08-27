return {
	'akinsho/bufferline.nvim',
	version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
	config = function(plugin)
		require("bufferline").setup {
			options = {
				separator_style = "slant"
			}
		}
	end,
    keys = {
        { 'q', ':BufferLineCyclePrev<cr>' },
        { 'w', ':BufferLineCycleNext<cr>' },
    }
}
