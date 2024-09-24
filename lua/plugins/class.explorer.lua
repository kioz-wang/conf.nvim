
return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim'
      -- Optional dependencies
      -- 'fd', 'ripgrep'
      -- "nvim-treesitter/nvim-treesitter"
    },
    lazy = true,
    keys = {
      {
        '<leader>ff',
        function() require('telescope.builtin').find_files() end,
        desc = 'Telescope find files'
      },
      {
        '<leader>fg',
        ':Telescope live_grep<CR>',
        desc = 'Telescope live grep'
      },
      {
        '<leader>fb',
        function() require('telescope.builtin').buffers() end,
        desc = 'Telescope buffers'
      },
      {
        '<leader>fh',
        function() require('telescope.builtin').help_tags() end,
        desc = 'Telescope help tags'
      }
    }
  },
  {
    "nvim-tree/nvim-tree.lua",
    tag = 'v1.7.0',
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    keys = {
      {
        '<leader>ttf',
        ':NvimTreeToggle<CR>',
        desc = 'Toggle files tree'
      }
    },
    opts = {
      filters = {
        dotfiles = true,
      },
      disable_netrw = true,
      modified = {
        enable = true,
      },
      renderer = {
        highlight_opened_files = "icon",
        highlight_modified = "name",
      },
      view = {
        width = {
          max = 45,
        },
      },
      diagnostics = {
        enable = true,
      },
    }
  },
  {
    'stevearc/aerial.nvim',
    lazy = true,
    opts = {},
    -- Optional dependencies
    dependencies = {
     "nvim-treesitter/nvim-treesitter",
     "nvim-tree/nvim-web-devicons"
    },
    keys = {
      {
        '<leader>tts',
        ':AerialToggle<CR>',
        desc = 'Toggle symbols tree'
      },
    },
  }
}

