local keymap = vim.keymap

keymap.set("n", "<leader>5", ":lua require('dap').continue()<cr>")
keymap.set("n", "<leader>6", ":lua require('dap').terminate()<cr>")
keymap.set("n", "<leader>7", ":lua require('dap').toggle_breakpoint()<cr>")
keymap.set("n", "<leader>8", ":lua require('dap').step_into()<cr>")
keymap.set("n", "<leader>9", ":lua require('dap').step_out()<cr>")
keymap.set("n", "<leader>0", ":lua require('dap').step_over()<cr>")
keymap.set("n", "<leader>db", ":lua require('dap').set_breakpoint()<cr>")
