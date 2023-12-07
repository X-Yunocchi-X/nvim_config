return function()
	require("lsp_signature").setup({
		bind = true,

		check_completion_visible = false,
		floating_window = true,
		floating_window_above_cur_line = true,
		hi_parameter = "Search",
		hint_enable = true,
		transparency = nil, -- disabled by default, allow floating win transparent value 1~100
		wrap = true,
		zindex = 45, -- avoid overlap with nvim.cmp
		handler_opts = { border = "single" },
	})
end
