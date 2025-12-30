-- options.lua

-- ============================================================================
-- Leader Key
-- ============================================================================
vim.g.mapleader = " "

-- ============================================================================
-- Editor Behavior
-- ============================================================================
-- General
vim.opt.mouse = "a"
vim.opt.hidden = true
-- Files
vim.opt.fileencoding = "utf-8"
vim.opt.backup = false
vim.opt.writebackup = false -- todo: understand
vim.opt.swapfile = false
-- Indentation
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true
-- Search
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- ============================================================================
-- UI
-- ============================================================================
-- General
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.numberwidth = 4
vim.opt.signcolumn = "yes:1"
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.showmode = false
vim.opt.showcmd = false
vim.opt.ruler = true
vim.opt.cmdheight = 1
vim.opt.pumheight = 10
vim.opt.fillchars = { eob = " " }
vim.opt.scrolloff = 10
-- Completion
vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.conceallevel = 0
