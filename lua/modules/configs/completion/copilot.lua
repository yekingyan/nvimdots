return function()
	vim.defer_fn(function()
		require("modules.utils").load_plugin("copilot", {
			cmp = {
				enabled = true,
				method = "getCompletionsCycling",
			},
			panel = {
				-- if true, it can interfere with completions in copilot-cmp
				enabled = false,
			},
			suggestion = {
				-- if true, it can interfere with completions in copilot-cmp
				enabled = false,
			},
			filetypes = {
				["dap-repl"] = false,
				["big_file_disabled_ft"] = false,
				markdown = true,
			},
		})
	end, 100)
	vim.g.copilot_filetypes = { markdown = true }
end
