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
    "DNLHC/glance.nvim",
    lazy = true,
    keys = {
      {
        '<leader>gD', '<CMD>Glance definitions<CR>',
        desc = 'Show definitions of the current symbol'
      },
      {
        '<leader>gR', '<CMD>Glance references<CR>',
        desc = 'Show references of the current symbol'
      },
      {
        '<leader>gY', '<CMD>Glance type_definitions<CR>',
        desc = 'Show type definitions of the current symbol'
      },
      {
        '<leader>gM', '<CMD>Glance implementations<CR>',
        desc = 'Show implementations of the current symbol'
      },
    },
  },
}

