local opt = vim.opt

if vim.g.neovide then
	vim.g.neovide_transparency = 0.65
	vim.g.neovide_hide_mouse_when_typing = true
	vim.g.neovide_fullscreen = true
	vim.o.guifont = "CaskaydiaCove Nerd Font:h18"
end

vim.opt.pumblend = 0

opt.number = true
opt.relativenumber = true
vim.bo.tabstop = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.autoindent = true

opt.scrolloff = 8
opt.sidescrolloff = 8

opt.cursorcolumn = true
opt.cursorline = true

opt.linebreak = true
opt.smartindent = true
opt.smarttab = true

opt.ignorecase = true
opt.smartcase = true

opt.mouse = "a"

opt.hlsearch = true
opt.incsearch = true
opt.swapfile = false
opt.autoread = true

opt.signcolumn = "yes"
opt.list = true

-- vim.api.nvim_create_autocmd("FileType", {
-- 	pattern = "haskell",
-- 	callback = function()
-- 		vim.opt_local.tabstop = 4
-- 		vim.opt_local.softtabstop = 4
-- 		vim.opt_local.shiftwidth = 4
-- 		vim.opt_local.expandtab = true
-- 	end,
-- })

vim.api.nvim_set_option("clipboard", "unnamedplus")

require("plugins")
require("core.mapping")

vim.g.go_doc_keywordprg_enabled = 0
vim.g.go_def_mapping_enabled = 0
vim.g.go_code_completion_enabled = 0

vim.cmd("highlight Pmenu guibg=NONE ctermbg=NONE")
vim.cmd("highlight CmpDoc guibg=NONE ctermbg=NONE")
vim.cmd("highlight NormalFloat guibg=NONE ctermbg=NONE")
vim.cmd("highlight FloatBorder guibg=NONE ctermbg=NONE")
