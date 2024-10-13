return {
  {
    'stevearc/aerial.nvim',
    lazy = true,
    opts = {
      backends = {
        c = { "lsp", "treesitter" },
        cpp = { "lsp", "treesitter" },
      },
      filter_kind = {
        c = false,
        cpp = false,
      },
      attach_mode = "global",
      close_automatic_events = { "unsupported" },
    },
    -- Optional dependencies
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    },
    keys = {
      {
        '<leader>ts',
        ':AerialToggle<CR>',
        desc = 'Toggle symbols tree'
      },
      {
        '<leader>tsn',
        ':AerialNavToggle<CR>',
        desc = 'Toggle symbol navigator'
      },
    },
  }
}
