return {
	-- ════════════════════════════════════════════════════════════════════════════
	-- Snippets
	-- ════════════════════════════════════════════════════════════════════════════
	{ "L3MON4D3/LuaSnip", keys = {} },

	-- ════════════════════════════════════════════════════════════════════════════
	-- Completion (blink.cmp)
	-- ════════════════════════════════════════════════════════════════════════════
	{
		"saghen/blink.cmp",
		dependencies = { "rafamadriz/friendly-snippets" },
		version = "1.*",

		init = function()
			require("luasnip.loaders.from_vscode").lazy_load()
		end,

		opts = {
			snippets = { preset = "luasnip" },
			signature = { enabled = true },
			keymap = {
				preset = "default",
				["<C-k>"] = { "select_prev", "fallback" },
				["<C-j>"] = { "select_next", "fallback" },
				["<tab>"] = { "accept", "fallback" },
			},
			appearance = {
				nerd_font_variant = "mono",
				use_nvim_cmp_as_default = false,
			},
			sources = {
				default = { "lsp", "path", "buffer", "snippets" },
			},
			completion = {
				menu = {
					border = "rounded",
					scrolloff = 1,
					scrollbar = false,
					draw = {
						padding = 1,
						gap = 1,
						columns = {
							{ "kind_icon" },
							{ "label", "label_description", gap = 1 },
							{ "kind" },
							{ "source_name" },
						},
					},
				},
				documentation = {
					window = {
						border = "rounded",
						scrollbar = false,
						winhighlight = "Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,EndOfBuffer:BlinkCmpDoc",
					},
					auto_show = true,
					auto_show_delay_ms = 500,
				},
			},
			fuzzy = { implementation = "prefer_rust_with_warning" },
		},
		opts_extend = { "sources.default" },
	},

	-- ════════════════════════════════════════════════════════════════════════════
	-- Treesitter
	-- ════════════════════════════════════════════════════════════════════════════
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		lazy = false,
		config = function()
			require("nvim-treesitter").setup({
				ensure_install = {
					"bash",
					"c",
					"html",
					"javascript",
					"json",
					"lua",
					"luadoc",
					"luap",
					"markdown",
					"markdown_inline",
					"python",
					"query",
					"regex",
					"tsx",
					"typescript",
					"vim",
					"vimdoc",
					"yaml",
					"rust",
				},
			})

			-- Enable treesitter-based highlighting
			vim.api.nvim_create_autocmd("FileType", {
				callback = function()
					pcall(vim.treesitter.start)
				end,
			})
		end,
	},

	-- telescope
	{
		"nvim-telescope/telescope.nvim",
		tag = "v0.2.0",
		dependencies = { "nvim-lua/plenary.nvim" },
		keys = {
			{
				"<leader>ff",
				function()
					require("telescope.builtin").find_files()
				end,
				desc = "[f]ind [f]ile",
			},
			{
				"<leader>fb",
				function()
					require("telescope.builtin").buffers()
				end,
				desc = "[f]ind [f]ile",
			},
			{
				"<leader>fs",
				function()
					require("telescope.builtin").live_grep()
				end,
				desc = "[f]ind [s]tring (text)",
			},
		},
		opts = {
			defaults = {
				path_display = { "filename_first" },
				-- This section defines default key mappings for all pickers
				mappings = {
					i = {
						-- In insert mode, press Enter to perform the 'select_default' action
						["<CR>"] = require("telescope.actions").select_default,
					},
					n = {
						-- In normal mode, press Enter to perform the 'select_default' action
						["<CR>"] = require("telescope.actions").select_default,
					},
				},
				vimgrep_arguments = {
					"rg",
					"--color=never",
					"--no-heading",
					"--with-filename",
					"--line-number",
					"--column",
					"--smart-case",
					"--hidden",
					"--trim",
				},
			},
		},
	},

	-- autopairs
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},

}
