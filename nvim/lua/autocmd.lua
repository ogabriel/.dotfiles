vim.api.nvim_create_autocmd({ "InsertLeave", "FocusLost" }, {
	callback = function()
		vim.cmd("silent! update")
		vim.cmd("silent! FormatWrite")
	end,
})

vim.api.nvim_create_autocmd({ "BufEnter" }, {
	callback = function()
		vim.cmd("set formatoptions-=cro")
		vim.cmd("setlocal formatoptions-=cro")
	end,
})
