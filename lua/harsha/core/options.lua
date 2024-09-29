-- this is for tree style of the folder structure while seeing via :Explorer
-- available options are
-- 0: Thin, one file per line
-- 1: Long, one file per line with file size and time stamp
-- 2: Wide, which is files in columns
-- 3: Tree style
vim.cmd("let g:netrw_liststyle=3")

local opt = vim.opt
-- This is to show the relative number from the current line of the cursor
opt.relativenumber = true
-- This is to show the absolute line number
opt.number = true

opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.wrap = false

-- search setting
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

opt.cursorline = true

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert space start postion

opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true
opt.splitbelow = true
