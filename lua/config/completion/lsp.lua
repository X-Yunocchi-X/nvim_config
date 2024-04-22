return function()
	local icons = {
		ui = require("util.icons").get("ui", true),
		misc = require("util.icons").get("misc", true),
	}

	local nvim_lsp = require("lspconfig")
	require("mason").setup({
		ui = {
			border = "single",
			icons = {
				package_pending = icons.ui.Modified_alt,
				package_installed = icons.ui.Check,
				package_uninstalled = icons.misc.Ghost,
			},
			keymaps = {
				toggle_server_expand = "<CR>",
				install_server = "i",
				update_server = "u",
				check_server_version = "c",
				update_all_servers = "U",
				check_outdated_servers = "C",
				uninstall_server = "X",
				cancel_installation = "<C-c>",
			},
		},
	})
	require("mason-lspconfig").setup({
		ensure_installed = {
			"lua_ls",
			"rust_analyzer",
			"pylsp",
		},
	})

	local on_attach = function(client, bufnr)
		local bufopts = { noremap = true, silent = true, buffer = bufnr }

		-- format on save
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = vim.api.nvim_create_augroup("LspFormatting", { clear = true }),
			buffer = bufnr,
			callback = function()
				vim.lsp.buf.format()
			end,
		})
	end

	local capabilities = require("cmp_nvim_lsp").default_capabilities()

	local lsp_config = {
		capabilities = capabilities,
		on_attach = function(_, bufnr)
			on_attach(_, bufnr)
		end,
	}

	nvim_lsp.lua_ls.setup(lsp_config)
	nvim_lsp.rust_analyzer.setup(lsp_config)
	nvim_lsp.gopls.setup(lsp_config)
	nvim_lsp.pylsp.setup(lsp_config)
	nvim_lsp.solargraph.setup(lsp_config)
	nvim_lsp.zls.setup(lsp_config)
	nvim_lsp.jdtls.setup(lsp_config)
	nvim_lsp.hls.setup({
		on_attach = on_attach,
		cpabilities = capabilities,
		filetypes = { "haskell", "lhaskell", "cabal" },
		settings = {
			haskell = {
				formattingProvider = "fourmolu",
			},
		},
	})
	nvim_lsp.clangd.setup({
		on_attach = on_attach,
		capabilities = capabilities,
		cmd = { "clangd", "--offset-encoding=utf-16" },
	})
end
