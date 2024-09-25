return {
	{
		"williamboman/mason.nvim",
		lazy = true,
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = true,
		opts = {},
		dependencies = {
			"williamboman/mason.nvim",
		},
	},
	{
		"neovim/nvim-lspconfig",
		event = "VeryLazy",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
		},
	},
	{
		"mfussenegger/nvim-lint",
		lazy = true,
	},
	{
		"DNLHC/glance.nvim",
		lazy = true,
		keys = {
			{
				"<leader>sD",
				"<CMD>Glance definitions<CR>",
				desc = "Show symbol definitions",
			},
			{
				"<leader>sR",
				"<CMD>Glance references<CR>",
				desc = "Show symbol references",
			},
			{
				"<leader>sY",
				"<CMD>Glance type_definitions<CR>",
				desc = "Show type definitions",
			},
			{
				"<leader>sM",
				"<CMD>Glance implementations<CR>",
				desc = "Show symbol implementations",
			},
		},
	},
  {
    'L3MON4D3/LuaSnip',
		lazy = true,
    dependencies = {
			"rafamadriz/friendly-snippets",
    },
  },
	{
		"hrsh7th/nvim-cmp",
		lazy = true,
		dependencies = {
			{
				"saadparwaiz1/cmp_luasnip",
				dependencies = {
					"L3MON4D3/LuaSnip",
				},
			},
			{
				"hrsh7th/cmp-nvim-lsp",
				dependencies = {
					"neovim/nvim-lspconfig",
				},
			},
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"onsails/lspkind-nvim",
		},
	},
}

