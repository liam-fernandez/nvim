-- style.lua

return {
	"stevearc/conform.nvim",
	keys = {
		{
			"<leader>cf",
			function()
				require("conform").format({ async = true }, function(err, did_edit)
					if not err and did_edit then
						vim.notify("Formatted", vim.log.levels.INFO)
					end
				end)
			end,
			mode = { "n" },
			desc = "[c]onform [f]ile",
		},
	},
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
			c = { "clang-format" },
		},
	},
}
