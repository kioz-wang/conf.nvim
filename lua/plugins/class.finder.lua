
return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
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
        '<leader>ft',
        ':NvimTreeToggle<CR>',
        desc = 'Toggle NvimTree'
      }
    },
    opts = {}
  }
}

