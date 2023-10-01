return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"jay-babu/mason-nvim-dap.nvim",
		"leoluz/nvim-dap-go",
		{
			"rcarriga/nvim-dap-ui",
			opts = { floating = { border = "rounded" } },
			config = function(_, opts)
				local dap, dapui = require("dap"), require("dapui")

				dap.listeners.after.event_initialized["dapui_config"] = function()
					dapui.open()
				end
				dap.listeners.before.event_terminated["dapui_config"] = function()
					dapui.close()
				end
				dap.listeners.before.event_exited["dapui_config"] = function()
					dapui.close()
				end

				dapui.setup(opts)
			end,
		},
		{
			"rcarriga/cmp-dap",
			dependencies = { "nvim-cmp" },
			config = function()
				require("cmp").setup.filetype({ "dap-repl", "dapui_watches", "dapui_hover" }, {
					sources = {
						{ name = "dap" },
					},
				})
			end,
		},
	},
	config = function()
		local dap = require("dap")

		--WARN: some elixir projects just get errors, like memory leaks and you cant really use it
		dap.configurations.elixir = {
			{
				type = "mix_task",
				name = "start tests",
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
				name = "start phoenix",
				task = "phx.server",
				request = "launch",
				projectDir = "${workspaceFolder}",
			},
		}

		dap.adapters.mix_task = {
			type = "executable",
			command = os.getenv("HOME") .. "/.local/share/nvim/mason/packages/elixir-ls/debugger.sh",
			args = {},
		}

		require("dap-go").setup()
	end,
	keys = {
		{ "<leader>bt", "<cmd>lua require('dap').toggle_breakpoint()<cr>" },
		{ "<leader>br", "<cmd>lua require('dap').run()<cr>" },
		{ "<leader>bc", "<cmd>lua require('dap').continue()<cr>" },
		{ "<leader>bs", "<cmd>lua require('dap').step_into()<cr>" },
		{ "<leader>bo", "<cmd>lua require('dap').repl.open()<cr>" },
		{ "<leader>but", "<cmd>lua require('dapui').toggle()<cr>" },
	},
}
