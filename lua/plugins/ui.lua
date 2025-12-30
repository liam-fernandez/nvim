-- ui.lua
return {

	-- lualine
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			options = {
				theme = "auto",
				section_separators = "",
				component_separators = "",
				globalstatus = false, -- one status bar to rule them all
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { "filename" },
				lualine_x = { "filetype", "encoding" },
				lualine_y = {},
				lualine_z = { '%{line(".").":".col(".")}' },
			},
		},
	},

	-- file tree
	{

		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons", -- optional, but recommended
		},
		keys = {
			{
				"<leader>tt",
				function()
					require("neo-tree.command").execute({ toggle = true, source = "filesystem" })
				end,
				desc = "Toggle Neo-tree (Filesystem)",
			},
		},
		lazy = false, -- neo-tree will lazily load itself
	},

	-- indent lines
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {
			indent = {
				char = "│",
			},
			scope = {
				enabled = true,
				show_start = false,
				show_end = false,
			},
		},
	},

	-- prettier diagnostics
	{
		"rachartier/tiny-inline-diagnostic.nvim",
		event = "VeryLazy",
		priority = 1000,
		config = function()
			require("tiny-inline-diagnostic").setup()
			vim.diagnostic.config({ virtual_text = false }) -- Disable Neovim's default virtual text diagnostics
		end,
	},
}
