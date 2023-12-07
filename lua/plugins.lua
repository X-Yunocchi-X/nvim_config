local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

	------------------- tool -------------------
	{
		"nvim-tree/nvim-tree.lua",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = require("config.tool.nvim-tree"),
	},

	{
		"tpope/vim-fugitive",
	},

	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = require("config.tool.toggleterm"),
	},

	{
		"gelguy/wilder.nvim",
		config = require("config.tool.wilder"),
		dependencies = { "romgrk/fzy-lua-native" },
	},

	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = require("config.tool.trouble"),
	},

	{
		"nvim-telescope/telescope.nvim",
		config = require("config.tool.telescope"),
		dependencies = {
			{ "nvim-tree/nvim-web-devicons" },
			{ "nvim-lua/plenary.nvim" },
			{ "jvgrootveld/telescope-zoxide" },
			{ "nvim-telescope/telescope-frecency.nvim" },
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		},
	},

	------------------- completion -------------------
	{
		"zbirenbaum/copilot.lua",
		config = require("config.completion.copilot"),
		dependencies = {
			{
				"zbirenbaum/copilot-cmp",
				config = require("config.completion.copilot-cmp"),
			},
		},
	},

	{
		"neovim/nvim-lspconfig",
		config = require("config.completion.lsp"),
		dependencies = {
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },
			{
				"Jint-lzxy/lsp_signature.nvim",
				config = require("config.completion.lsp-signature"),
			},
			{
				"glepnir/lspsaga.nvim",
				config = require("config.completion.lspsaga"),
			},
		},
	},

	{
		"hrsh7th/nvim-cmp",
		config = require("config.completion.cmp"),
		dependencies = {
			{ "onsails/lspkind.nvim" },
			{
				"L3MON4D3/LuaSnip",
				dependencies = { "rafamadriz/friendly-snippets" },
				config = require("config.completion.luasnip"),
			},
			{ "lukas-reineke/cmp-under-comparator" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },
			{ "hrsh7th/cmp-path" },
			{ "f3fora/cmp-spell" },
			{ "hrsh7th/cmp-buffer" },
			{ "kdheepak/cmp-latex-symbols" },
			{ "ray-x/cmp-treesitter",              commit = "c8e3a74" },
		},
	},
	{
		"jose-elias-alvarez/null-ls.nvim",
		config = require("config.completion.null-ls"),
		dependencies = {
			"nvim-lua/plenary.nvim",
			"jay-babu/mason-null-ls.nvim",
		},
	},

	------------------- ui -------------------
	{
		"neanias/everforest-nvim",
		version = false,
		lazy = false,
		priority = 1000, -- make sure to load this before all the other start plugins
		config = require("config.ui.everforest"),
	},

	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		config = require("config.ui.indent-blankline"),
	},

	{
		"karb94/neoscroll.nvim",
		config = require("config.ui.neoscroll"),
	},

	{
		"dstein64/nvim-scrollview",
		config = require("config.ui.scrollview"),
	},

	{
		"goolord/alpha-nvim",
		config = require("config.ui.alpha"),
	},

	-- noice
	-- {
	-- 	"folke/noice.nvim",
	-- 	event = "VeryLazy",
	-- 	dependencies = {
	-- 		"MunifTanjim/nui.nvim",
	-- 		"rcarriga/nvim-notify",
	-- 	},
	-- 	config = require("config.ui.noice"),
	-- },

	{
		"rcarriga/nvim-notify",
		config = require("config.ui.notify"),
	},

	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = require("config.ui.bufferline"),
	},

	{
		"lewis6991/gitsigns.nvim",
		config = require("config.ui.gitsigns"),
	},

	-- Standalone UI for nvim-lsp progress
	{
		"j-hui/fidget.nvim",
		tag = "legacy",
		event = "LspAttach",
		config = require("config.ui.fidget"),
	},

	{
		"nvim-lualine/lualine.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = require("config.ui.lualine"),
	},

	------------------- editor -------------------
	{
		"nvim-treesitter/nvim-treesitter",
		build = function()
			if #vim.api.nvim_list_uis() ~= 0 then
				vim.api.nvim_command("TSUpdate")
			end
		end,
		dependencies = {
			{ "andymass/vim-matchup" },        -- better matchup than %
			{
				"nvim-treesitter/nvim-treesitter-context", -- shows the context of the currently visible buffer contents
				config = require("config.editor.ts-context"),
			},
			{
				"abecodes/tabout.nvim", -- use tab to jump out bracket
				config = require("config.editor.tabout"),
			},
			{
				"hiphish/rainbow-delimiters.nvim",
				config = require("config.editor.rainbow_delims"), -- rainbow brackets
			},
			{
				"NvChad/nvim-colorizer.lua",
				config = require("config.editor.colorizer"), -- colorize color code
			},
		},
		config = require("config.editor.treesitter"),
	},

	{
		"RRethy/vim-illuminate",
		config = require("config.editor.illuminate"),
	},

	{
		"m4xshen/autoclose.nvim",
		config = require("config.editor.autoclose"),
	},

	{
		"max397574/better-escape.nvim",
		config = require("config.editor.better_escape"),
	},

	{
		"numToStr/Comment.nvim",
		lazy = false,
		config = require("config.editor.comment"),
	},

	{
		"phaazon/hop.nvim",
		config = require("config.editor.hop"),
	},
	------------------- language -------------------
	{
		"fatih/vim-go",
	},
})
