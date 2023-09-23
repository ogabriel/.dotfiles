return {
	"github/copilot.vim",
	config = function()
		vim.cmd('imap <silent><script><expr> <C-CR> copilot#Accept("\\<CR>")')

		vim.g.copilot_no_tab_map = true

		vim.g.copilot_filetypes = {
			["*"] = false,
			["javascript"] = true,
			["typescript"] = true,
			["lua"] = false,
			["rust"] = true,
			["c"] = true,
			["c#"] = true,
			["c++"] = true,
			-- ["go"] = true,
			["python"] = true,
			["ruby"] = true,
			["elixir"] = true,
		}
	end,
}
