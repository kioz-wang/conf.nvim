return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      -- Optional dependencies
      -- 'fd', 'ripgrep', 'fzf'
      -- "nvim-treesitter/nvim-treesitter"
      'nvim-telescope/telescope-symbols.nvim',
    },
    lazy = true,
    opts = {
      defaults = {
        path_display = {
          "smart"
        },
      },
    },
    keys = {
      {
        '<leader>fp',
        ":Telescope builtin<CR>",
        desc = 'Telescope Select and Exec a picker'
      },
      {
        '<leader>ff',
        ":Telescope find_files<CR>",
        desc = 'Find Files'
      },
      {
        '<leader>fr',
        function() require('telescope.builtin').oldfiles({ only_cwd = true }) end,
        desc = 'Find Recent Files'
      },
      {
        '<leader>fb',
        ":Telescope buffers<CR>",
        desc = 'Find Buffers'
      },
      {
        '<leader>fg',
        ":Telescope live_grep<CR>",
        desc = 'Live Grep'
      },
      {
        '<leader>fG',
        ":Telescope current_buffer_fuzzy_find<CR>",
        desc = 'Fuzzy Grep in current buffer'
      },
      {
        '<leader>fh',
        ":Telescope help_tags<CR>",
        desc = 'Find Help'
      },
      {
        '<leader>fm',
        ":Telescope man_pages<CR>",
        desc = 'Man Pages'
      },
      {
        '<leader>fk',
        ":Telescope keymaps<CR>",
        desc = 'Exec a keymap'
      },
      {
        '<leader>fc',
        ":Telescope commands<CR>",
        desc = 'Ready to exec a command'
      },
      {
        '<leader>sgr',
        ':Telescope lsp_references<CR>',
        desc = "Cursor word's LSP references"
      },
      {
        '<leader>sgd',
        ':Telescope lsp_definitions<CR>',
        desc = "Cursor word's LSP definitions"
      },
      {
        '<leader>sgm',
        ':Telescope lsp_implementations<CR>',
        desc = "Cursor word's LSP implementations"
      },
      {
        '<leader>d',
        ':Telescope diagnostics<CR>',
        desc = "Lists diagnostics"
      },
      {
        '<leader>sF',
        ':Telescope lsp_document_symbols<CR>',
        desc = 'Find Symbols in current buffer'
      },
      {
        '<leader>sf',
        ':Telescope lsp_workspace_symbols<CR>',
        desc = 'Find Symbols'
      },
    }
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    event = "VeryLazy",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {}
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end,
  }
}
