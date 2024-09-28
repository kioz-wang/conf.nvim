return {
  {
    "lewis6991/gitsigns.nvim",
    event = 'VeryLazy',
    opts = {
      numhl = true,
      linehl = true,
      -- issue: line blame will be synchronized on all unfocused buffers.
      -- current_line_blame = true,
    },
    keys = {
      {
        '<leader>gS',
        ':Gitsigns stage_hunk<CR>',
        desc = 'Git stage the hunk at the cursor position'
      },
      {
        '<leader>gU',
        ':Gitsigns undo_stage_hunk<CR>',
        desc = 'Undo the last Git stage_hunk'
      },
      {
        '<leader>gR',
        ':Gitsigns reset_hunk<CR>',
        desc = 'Git reset the lines of the hunk at the cursor position'
      },
      {
        '<leader>gs',
        ':Gitsigns stage_buffer<CR>',
        desc = 'Git stage all hunks in current buffer'
      },
      {
        '<leader>gr',
        ':Gitsigns reset_buffer<CR>',
        desc = 'Git reset the lines of all hunks in the buffer'
      },
      {
        '<leader>tgb',
        ':Gitsigns blame_line<CR>',
        desc = 'Show git blame on the current line in a floating window'
      },
      {
        '<leader>tgd',
        ':Gitsigns toggle_deleted<CR>',
        desc = 'Toggle git show the old version of hunks inline in the buffer'
      },
    }
  },
  {
    "mhartington/formatter.nvim",
    lazy = true,
    keys = {
      {
        '<leader>F',
        '<CMD>FormatWrite<CR>',
        desc = 'Format the buffer'
      },
    },
  },
  {
    "smoka7/hop.nvim",
    lazy = true,
    opts = {},
    keys = {
      {
        -- use "cl" to delete characters and start insert instead.
        "s", "<CMD>HopChar2<CR>", desc = "Cursor move by HopChar2"
      },
      {
        -- use "cc" to delete lines and start insert instead.
        "S", "<CMD>HopWord<CR>", desc = "Cursor move by HopWord"
      },
    },
  },
}
