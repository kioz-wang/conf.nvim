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
        require("telescope.builtin").find_files,
        desc = 'Telescope find files'
      },
      {
        '<leader>ffr',
        function() require('telescope.builtin').oldfiles({ only_cwd = true }) end,
        desc = 'Telescope find recent files'
      },
      {
        '<leader>fb',
        require('telescope.builtin').buffers,
        desc = 'Telescope buffers'
      },
      {
        '<leader>fg',
        require('telescope.builtin').live_grep,
        desc = 'Telescope live grep'
      },
      {
        '<leader>fG',
        require('telescope.builtin').current_buffer_fuzzy_find,
        desc = 'Telescope fuzzy in current buffer'
      },
      {
        '<leader>fh',
        require('telescope.builtin').help_tags,
        desc = 'Telescope help tags'
      },
      {
        '<leader>sfS',
        ':Telescope lsp_document_symbols<CR>',
        desc = 'Telescope find symbols in current buffer'
      },
      {
        '<leader>sfs',
        ':Telescope lsp_dynamic_workspace_symbols<CR>',
        desc = 'Telescope find symbols'
      },
      {
        '<leader>sfr',
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
