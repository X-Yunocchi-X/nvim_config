local keymap = vim.keymap

keymap.set("n", "<c-e>", "<cmd>NvimTreeToggle<cr>")

-- ToggleTerm
keymap.set("n", "<c-\\>", "<cmd>ToggleTerm<cr>")
keymap.set("t", "<c-\\>", "<cmd>ToggleTerm<cr>")
keymap.set("n", "<a-\\>", "<cmd>ToggleTerm  direction=float<cr>")
keymap.set("t", "<a-\\>", "<cmd>ToggleTerm  direction=float<cr>")
keymap.set("t", "<Esc>", "<c-\\><c-n>")
keymap.set("t", "jk", "<c-\\><c-n>")

-- Trouble
keymap.set("n", "gt", "<cmd>TroubleToggle<cr>")

-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fw", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope colorscheme<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope grep_string<cr>") -- find current word
