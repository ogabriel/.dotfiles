return {
  "neoclide/coc.nvim",
  branch = "release",
  config = function() 
	vim.g.coc_global_extensions = {
		"coc-json",
		"coc-tsserver",
		"coc-word",
		"coc-elixir",
	}
  end,
}