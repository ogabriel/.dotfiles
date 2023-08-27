return {
	'akinsho/bufferline.nvim',
	version = "*",
    event = { "BufEnter" },
    dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
    opts = {
        options = {
            -- stylua: ignore
            close_command = function(n) require("mini.bufremove").delete(n, false) end,
            -- stylua: ignore
            right_mouse_command = function(n) require("mini.bufremove").delete(n, false) end,
            diagnostics = "nvim_lsp",
            always_show_bufferline = false,
        },
    },
    keys = {
        { 'q', ':BufferLineCyclePrev<cr>' },
        { 'w', ':BufferLineCycleNext<cr>' },
    }
}
