
return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      -- Optional dependencies
      -- 'fd', 'ripgrep'
      -- "nvim-treesitter/nvim-treesitter"
      'nvim-telescope/telescope-symbols.nvim',
    },
    lazy = true,
    keys = {
      {
        '<leader>ff',
        function() require('telescope.builtin').find_files() end,
        desc = 'Telescope find files'
      },
      {
        '<leader>ffr',
        function() require('telescope.builtin').oldfiles({ only_cwd = true }) end,
        desc = 'Telescope find recent files'
      },
      {
        '<leader>fb',
        function() require('telescope.builtin').buffers() end,
        desc = 'Telescope buffers'
      },
      {
        '<leader>fg',
        ':Telescope live_grep<CR>',
        desc = 'Telescope live grep'
      },
      {
        '<leader>fG',
        ':Telescope current_buffer_fuzzy_find<CR>',
        desc = 'Telescope fuzzy in current buffer'
      },
      {
        '<leader>fh',
        function() require('telescope.builtin').help_tags() end,
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
    "nvim-tree/nvim-tree.lua",
    tag = 'v1.7.0',
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    keys = {
      {
        '<leader>ttf',
        function()
          local api = require('nvim-tree.api')
          local crtBuf = vim.api.nvim_get_current_buf()
          local crtBufFt = vim.api.nvim_get_option_value("filetype", { buf = crtBuf })
          if crtBufFt == "NvimTree" then
            api.tree.close()
          else
            api.tree.find_file({ open = true })
          end
        end,
        desc = 'Toggle files tree smartly'
      },
    },
    opts = {
      filters = {
        custom = { "^.git$" },
      },
      disable_netrw = true,
      modified = {
        enable = true,
      },
      renderer = {
        hidden_display = "all",
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
    opts = {
      backends = {
        c = {"lsp", "treesitter"},
        cpp = {"lsp", "treesitter"},
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
        '<leader>tts',
        ':AerialToggle<CR>',
        desc = 'Toggle symbols tree'
      },
      {
        '<leader>tns',
        ':AerialNavToggle<CR>',
        desc = 'Toggle symbol navigator'
      },
    },
  }
}

