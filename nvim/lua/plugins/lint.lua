return {
	"mfussenegger/nvim-lint",
	config = function()
		require("lint").linters_by_ft = {
			python = { "flake8" },
			-- lua = {"luacheck"},
			-- sh = {"shellcheck"},
			-- go = {"golangci_lint"},
			-- javascript = {"eslint"},
			-- typescript = {"eslint"},
			-- typescriptreact = {"eslint"},
			-- javascriptreact = {"eslint"},
			-- html = {"tidy"},
			-- css = {"stylelint"},
			-- scss = {"stylelint"},
			-- markdown = {"markdownlint"},
			-- yaml = {"yamllint"},
			-- rust = {"cargo"},
			-- vim = {"vint"},
			-- ["vim-plug"] = {"vint"},
			-- ["vim-plug-config"] = {"vint"},
			-- ["vim-plug-autoload"] = {"vint"},
			-- ["vim-plug-ftplugin"] = {"vint"},
			-- ["vim-plug-plugin"] = {"vint"},
			-- ["vim-plug-colorscheme"] = {"vint"},
			-- ["vim-plug-after"] = {"vint"},
			-- ["vim-plug-lang"] = {"vint"},
			-- ["vim-plug-syntax"] = {"vint"},
			-- ["vim-plug-color"] = {"vint"},
			-- ["vim-plug-compiler"] = {"vint"},
			-- ["vim-plug-compiler"] = {"vint"},
			-- ["vim-plug-compiler"] = {"vint"},
		}
	end,
}
