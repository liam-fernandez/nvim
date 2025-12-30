return {
	{
		"mhartington/oceanic-next",
		config = function() end,
	},
	{
		"AlexvZyl/nordic.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			-- require("nordic").load()
		end,
	},
	{
		"adibhanna/yukinord.nvim",
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme yukinord]])
		end,
	},
}
