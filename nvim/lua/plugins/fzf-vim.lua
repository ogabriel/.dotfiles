return {
	"junegunn/fzf.vim",
	dependencies = {
		{ "junegunn/fzf", build = "./install --bin" },
	},
	config = function()
		local set_keymap = vim.api.nvim_set_keymap

		set_keymap("n", "<C-f>", ":Rg<CR>", { silent = true, noremap = true })
	end,
}
