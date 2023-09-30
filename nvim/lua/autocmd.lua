vim.api.nvim_create_autocmd({ "InsertLeavePre" }, {
	callback = function()
		vim.api.nvim_command("update")
	end,
})
