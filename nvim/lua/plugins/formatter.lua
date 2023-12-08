return {
	"mhartington/formatter.nvim",
	event = { "BufWritePost" },
	cmd = { "Format", "FormatWrite" },
	config = function(_)
		local group = vim.api.nvim_create_augroup("FormatAutogroup", { clear = true })

		vim.api.nvim_create_autocmd("BufWritePost", {
			command = "silent! FormatWrite",
			group = group,
		})

		-- vim.api.nvim_create_autocmd("BufWritePre", {
		-- 	callback = function()
		-- 		vim.lsp.buf.format()
		-- 	end,
		-- 	group = group,
		-- })

		local util = require("formatter.util")

		require("formatter").setup({
			logging = true,
			log_level = vim.log.levels.WARN,
			filetype = {
				elixir = { require("formatter.filetypes.elixir").mixformat },
				lua = { require("formatter.filetypes.lua").stylua },
				html = { require("formatter.filetypes.html").prettier },
				sh = { require("formatter.filetypes.sh").shfmt },
				go = { require("formatter.filetypes.go").gofmt },
				python = { require("formatter.filetypes.python").black },
				yaml = {
					function()
						return {
							exe = "yamlfmt",
							args = {
								"-in",
								"-formatter indentless_arrays=true,retain_line_breaks=true,max_line_length=120,drop_merge_tag=true",
							},
							stdin = true,
						}
					end,
				},
				sql = {
					function()
						return {
							exe = "pg_format -",
							stdin = true,
						}
					end,
				},
				ruby = {
					function()
						return {
							exe = "rubocop",
							args = {
								"--fix-layout",
								"--stdin",
								util.escape_path(util.get_current_buffer_file_name()),
								"--format",
								"files",
							},
							stdin = true,
							transform = function(text)
								table.remove(text, 1)
								table.remove(text, 1)
								return text
							end,
						}
					end,
				},
				-- eelixir = {
				-- 	require("formatter.util").withl(require("formatter.defaults").prettier, "html"),
				-- },
				["*"] = {
					require("formatter.filetypes.any").remove_trailing_whitespace,
				},
			},
		})
	end,
	keys = {
		{ "<leader>fw", ":Format<CR>", silent = true },
		{ "<leader>fW", ":FormatWrite<CR>", silent = true },
	},
}
