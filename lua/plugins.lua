local M;

-- Install your plugins here
M = {
	-- My plugins here
	{
		"lewis6991/impatient.nvim",
		config = function()
			require "configs.impatient"
		end
	},
	{ "nvim-lua/popup.nvim" }, -- An implementation of the Popup API from vim in Neovim
	{ "nvim-lua/plenary.nvim" }, -- Useful lua functions used ny lots of plugins
	{ "onsails/lspkind.nvim" },

	{
		"goolord/alpha-nvim",
		lazy = false,
		config = function()
			require "configs.alpha"
		end
	},
	{ "antoinemadec/FixCursorHold.nvim" }, -- This is needed to fix lsp doc highlight
	-- Indent lines
	{
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require "configs.indentline"
		end
	},

	-- Auto pairs
	{
		"windwp/nvim-autopairs",
		config = function()
			require "configs.autopairs"
		end
	}, -- Autopairs, integrates with both cmp and treesitter

	-- Comment
	{
		"numToStr/Comment.nvim",
		config = function()
			require "configs.comment"
		end
	}, -- Easily comment stuff
	{ "JoosepAlviste/nvim-ts-context-commentstring" },

	-- nvim tree
	{
		"kyazdani42/nvim-tree.lua",
		dependencies = { "kyazdani42/nvim-web-devicons" },
		config = function()
			require "configs.nvim-tree"
		end
	},

	-- buffer
	{
		"akinsho/bufferline.nvim",
		event = "BufReadPost",
		dependencies = { "moll/vim-bbye" },
		config = function()
			require "configs.bufferline"
		end
	},

	-- status line
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require "configs.lualine"
		end
	},

	-- Colorschemes
	-- use "lunarvim/colorschemes" -- A bunch of colorschemes you can try out
	-- { "lunarvim/darkplus.nvim", lazy = false },
	{
		"catppuccin/nvim",
		lazy = false,
		config = function()
			require "configs.colorscheme"
		end
	},
	-- { "folke/tokyonight.nvim",  lazy = false },
	-- Terminal
	{
		"akinsho/toggleterm.nvim",
		config = function()
			require "configs.toggleterm"
		end
	},

	-- cmp plugins
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/cmp-buffer", -- buffer completions
			"hrsh7th/cmp-path", -- path completions
			"hrsh7th/cmp-cmdline", -- cmdline completions
			"L3MON4D3/LuaSnip",
			"rafamadriz/friendly-snippets",
			"saadparwaiz1/cmp_luasnip", -- snippet completions
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-nvim-lua"
		} -- The completion plugin
	},

	{ "Nvchad/ui" }, -- for icons and theme stuff

	-- lsp stuff
	-- LSP
	{
		"williamboman/mason.nvim", -- simple to use language server installer
		cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate" },
		config = function()
			require "configs.lsp.mason"
		end
	},
	{
		"neovim/nvim-lspconfig",
		event = "User FilePost",
		dependencies = {
			"williamboman/mason-lspconfig.nvim", -- simple to use language server installer
			"jose-elias-alvarez/null-ls.nvim", -- LSP diagnostics and code actions
		},
		config = function()
			require "configs.lsp"
		end
	}, -- enable LSP

	-- Telescope
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-telescope/telescope-media-files.nvim",
			"nvim-telescope/telescope-live-grep-args.nvim",
		},
		config = function()
			require "configs.telescope"
		end
	},
	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPost", "BufNewFile" },
		cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
		dependencies = {
			"p00f/nvim-ts-rainbow",
			"nvim-treesitter/playground",
		},
		config = function()
			require "configs.treesitter"
		end
	},
	-- Git
	{
		"lewis6991/gitsigns.nvim",
		event = "User FilePost",
		config = function()
			require "configs.gitsigns"
		end
	},
}

return M
