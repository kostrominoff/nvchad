return {
	{
		"williamboman/mason.nvim",
		opts = require("configs.mason"),
	},

	{
		"williamboman/mason-lspconfig.nvim",
		event = { "VeryLazy", "BufRead" },
		config = function()
			require("configs.mason-lspconfig")
		end,
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			require("configs.lspconfig").defaults()
		end,
	},

	{
		"stevearc/conform.nvim",
		opts = require("configs.conform"),
	},

	{
		"mfussenegger/nvim-lint",
		config = function()
			require("configs.nvim-lint")
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = require("configs.treesitter"),
	},

	{
		"nvim-tree/nvim-tree.lua",
		opts = require("configs.nvim-tree"),
	},

	{
		"antosha417/nvim-lsp-file-operations",
		lazy = false,
		opts = {},
	},
}
