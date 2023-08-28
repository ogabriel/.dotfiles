--WIP
return {
	"mfussenegger/nvim-dap",
	dependencies = {
		{ "williamboman/mason.nvim" }, -- Optional
	},
	keys = {
		{ "<leader>bt", "<cmd>lua require('dap').toggle_breakpoint()<cr>" },
		{ "<leader>br", "<cmd>lua require('dap').run()<cr>" },
		{ "<leader>bc", "<cmd>lua require('dap').continue()<cr>" },
		{ "<leader>bs", "<cmd>lua require('dap').step_into()<cr>" },
		{ "<leader>bo", "<cmd>lua require('dap').repl.open()<cr>" },
	},
	config = function(_)
		local dap = require("dap")

		dap.configurations.elixir = {
			{
				type = "mix_task",
				name = "mix test",
				task = "test",
				taskArgs = { "--trace" },
				request = "launch",
				startApps = true,
				projectDir = "${workspaceFolder}",
				requireFiles = {
					"test/**/test_helper.exs",
					"test/**/*_test.exs",
					"apps/**/test/**/test_helper.exs",
					"apps/**/test/**/*_test.exs",
				},
			},
			{
				type = "mix_task",
				name = "phx.server",
				request = "launch",
				task = "phx.server",
				projectDir = ".",
			},
		}

		local command = os.getenv("HOME") .. "/.local/share/nvim/mason" .. "/bin/elixir-ls-debugger"

		dap.adapters.mix_task = {
			type = "executable",
			command = command,
			args = {},
		}
	end,
}
