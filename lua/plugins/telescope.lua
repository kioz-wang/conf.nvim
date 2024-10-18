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
    keys = {
      {
        '<leader>ff',
        ":Telescope find_files<CR>",
        desc = 'Telescope find files'
      },
      -- {
      --   '<leader>ffr',
      --   function() require('telescope.builtin').oldfiles({ only_cwd = true }) end,
      --   desc = 'Telescope find recent files'
      -- },
      {
        '<leader>fb',
        ":Telescope buffers<CR>",
        desc = 'Telescope buffers'
      },
      {
        '<leader>fg',
        ":Telescope live_grep<CR>",
        desc = 'Telescope live grep'
      },
      {
        '<leader>fG',
        ":Telescope current_buffer_fuzzy_find<CR>",
        desc = 'Telescope fuzzy in current buffer'
      },
      {
        '<leader>fh',
        ":Telescope help_tags<CR>",
        desc = 'Telescope help tags'
      },
      {
        '<leader>fsS',
        ':Telescope lsp_document_symbols<CR>',
        desc = 'Telescope find symbols in current buffer'
      },
      {
        '<leader>fss',
        ':Telescope lsp_dynamic_workspace_symbols<CR>',
        desc = 'Telescope find symbols'
      },
      {
        '<leader>fsr',
        ':Telescope lsp_references<CR>',
        desc = 'Telescope find all references of current symbol'
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
