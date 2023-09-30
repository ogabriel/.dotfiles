vim.api.nvim_create_autocmd({ "InsertLeavePre" }, {
	callback = function()
		vim.cmd("update")
	end,
})

vim.api.nvim_create_autocmd({ "BufEnter" }, {
	callback = function()
		vim.cmd("set formatoptions-=cro")
		vim.cmd("setlocal formatoptions-=cro")
	end,
})
