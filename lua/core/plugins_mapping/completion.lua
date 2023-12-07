local keymap = vim.keymap

keymap.set("n", "g[", ":Lspsaga  diagnostic_jump_prev<cr>")
keymap.set("n", "g]", ":Lspsaga  diagnostic_jump_next<cr>")
keymap.set("n", "K", ":Lspsaga  hover_doc<cr>")
keymap.set("n", "gD", ":Lspsaga  goto_definition<cr>")
