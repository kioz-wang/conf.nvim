
local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.cursorline = true

opt.mouse = 'a'

opt.clipboard = 'unnamedplus'

opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true
opt.signcolumn = "yes"

vim.g.mapleader = ' '

local map = vim.keymap.set

map('v', 'J', ":m '>+1<CR>gv=gv")
map('v', 'K', ":m '<-2<CR>gv=gv")

map('n', 'j', [[v:count ? 'j' : 'gj']], { expr = true })
map('n', 'k', [[v:count ? 'k' : 'gk']], { expr = true })

map('n', '<leader>wh', '<C-w>h', { desc = "Focus the left window" })
map('n', '<leader>wj', '<C-w>j', { desc = "Focus the below window" })
map('n', '<leader>wk', '<C-w>k', { desc = "Focus the above window" })
map('n', '<leader>wl', '<C-w>l', { desc = "Focus the right window" })
map('n', '<leader>wq', '<C-w>q', { desc = "Quit the current window" })

map('n', '<leader>sv', '<C-w>v')
map('n', '<leader>sh', '<C-w>s')

map('n', '<leader>nh', ':nohl<CR>')

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('config.lazy')

-- vim.cmd[[colorscheme tokyonight]]
vim.cmd[[colorscheme nord]]

require('lspconfig').clangd.setup {}

require('lspconfig').lua_ls.setup {
  on_init = function(client)
    if client.workspace_folders then
      local path = client.workspace_folders[1].name
      if vim.uv.fs_stat(path..'/.luarc.json') or vim.loop.fs_stat(path..'/.luarc.jsonc') then
        return
      end
    end

    client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
      runtime = {
        -- Tell the language server which version of Lua you're using
        -- (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT'
      },
      -- Make the server aware of Neovim runtime files
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME
          -- Depending on the usage, you might want to add additional paths here.
          -- "${3rd}/luv/library"
          -- "${3rd}/busted/library",
        }
        -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
        -- library = vim.api.nvim_get_runtime_file("", true)
      }
    })
  end,
  settings = {
    Lua = {}
  }
}

