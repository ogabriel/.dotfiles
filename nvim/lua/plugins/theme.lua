return {
	--plugin that is supported by treesitter
	"navarasu/onedark.nvim",
	config = function(_)
		vim.opt.termguicolors = true

		require("onedark").setup({
			style = "cool",
		})

		require("onedark").load()
	end,
}
