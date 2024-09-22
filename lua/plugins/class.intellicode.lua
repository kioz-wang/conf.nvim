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
    }
  },
  {
    "neovim/nvim-lspconfig",
    event = 'VeryLazy',
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
    }
  },
  {
    "mfussenegger/nvim-lint",
    lazy = true,
  },
  {
    "mhartington/formatter.nvim",
    lazy = true,
  }
}

