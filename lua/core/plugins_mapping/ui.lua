local keymap = vim.keymap

keymap.set("n", "<C-h>", ":BufferLineCyclePrev<CR>")
keymap.set("n", "<C-l>", ":BufferLineCycleNext<CR>")
keymap.set("n", "<C-p>", ":BufferLinePick<CR>")
keymap.set("n", "<C-c>", ":BufferLinePickClose<CR>")
