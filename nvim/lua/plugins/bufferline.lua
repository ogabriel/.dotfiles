return {
	"akinsho/bufferline.nvim",
	version = "*",
	event = { "BufEnter" },
	dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
	opts = {
		options = {
			close_command = function(n)
				require("mini.bufremove").delete(n, false)
			end,
			right_mouse_command = function(n)
				require("mini.bufremove").delete(n, false)
			end,
			diagnostics = "nvim_lsp",
			always_show_bufferline = false,
		},
	},
	keys = {
		{ "q", ":BufferLineCyclePrev<cr>" },
		{ "w", ":BufferLineCycleNext<cr>" },
		{ "(", ":BufferLineGoToBuffer 1<cr>" },
		{ ")", ":BufferLineGoToBuffer 0<cr>" },
	},
}
