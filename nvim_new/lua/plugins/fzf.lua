return {
	"junegunn/fzf.vim",
	dependencies = {
		'junegunn/fzf',
		build = function() vim.fn['fzf#install']() end,
	},
	keys = {
		{ '<C-f>', ':Ag<cr>' },
		{ '<C-p>', ':Files<cr>' },
	},
}
