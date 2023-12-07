local opt = vim.opt

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

vim.api.nvim_set_option("clipboard", "unnamedplus")

require("core.mapping")
require("plugins")

vim.cmd("highlight Pmenu guibg=NONE ctermbg=NONE")
vim.cmd("highlight CmpDoc guibg=NONE ctermbg=NONE")
vim.cmd("highlight NormalFloat guibg=NONE ctermbg=NONE")
vim.cmd("highlight FloatBorder guibg=NONE ctermbg=NONE")
