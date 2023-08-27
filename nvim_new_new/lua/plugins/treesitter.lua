return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
	local configs = require("nvim-treesitter.configs")

	configs.setup({
	    ensure_installed = {
		"c", "rust",
		"lua", "vim", "vimdoc", "query",
		"elixir", "heex", "eex",
		"ruby",
		"javascript", "html", "css",
		"csv", "dockerfile"
		},
	    sync_install = false,
	    highlight = {
		enable = true,
		additional_vim_regex_highlighting = false
	    },
	    indent = { enable = true },
	})
    end
}
