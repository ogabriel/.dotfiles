return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function(opts)
		vim.opt.foldmethod = "expr"
		vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
		vim.opt.foldlevel = 10

		require("nvim-treesitter.configs").setup(opts)
	end,
	opts = {
		ensure_installed = {
			"bash",
			"c",
			"rust",
			"go",
			"lua",
			"vim",
			"vimdoc",
			"query",
			"erlang",
			"elixir",
			"heex",
			"eex",
			"ruby",
			"javascript",
			"html",
			"css",
			"csv",
			"yaml",
			"dockerfile",
			"surface",
		},
		sync_install = false,
		highlight = {
			enable = true,
			-- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
			disable = function(lang, buf)
				local max_filesize = 100 * 1024 -- 100 KB
				local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
				if ok and stats and stats.size > max_filesize then
					return true
				end
			end,
			additional_vim_regex_highlighting = false,
		},
		indent = {
			enable = true,
		},
	},
}
