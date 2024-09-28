local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.cursorline = true

opt.clipboard = "unnamedplus"

opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true
opt.signcolumn = "yes"

require("config.keymaps")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("config.lazy")

-- vim.cmd[[colorscheme tokyonight]]
vim.cmd([[colorscheme tokyonight-storm]])

require("formatter").setup({
  filetype = {
    lua = {
      require("formatter.filetypes.lua").stylua,
    },
    ["*"] = {
      require("formatter.defaults").prettier,
    },
  },
})

require('nvim-treesitter.configs').setup({
  ensure_installed = {},
  sync_install = false,
  auto_install = true,
  ignore_install = {},
  modules = {
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  incremental_selection = {
    enable = true,
  },
})

require("lspconfig").clangd.setup({})

require("lspconfig").lua_ls.setup({
  on_init = function(client)
    if client.workspace_folders then
      local path = client.workspace_folders[1].name
      if vim.uv.fs_stat(path .. "/.luarc.json") or vim.loop.fs_stat(path .. "/.luarc.jsonc") then
        return
      end
    end

    client.config.settings.Lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
      runtime = {
        -- Tell the language server which version of Lua you're using
        -- (most likely LuaJIT in the case of Neovim)
        version = "LuaJIT",
      },
      -- Make the server aware of Neovim runtime files
      workspace = {
        checkThirdParty = false,
        -- library = {
        --   vim.env.VIMRUNTIME,
        -- Depending on the usage, you might want to add additional paths here.
        -- "${3rd}/luv/library"
        -- "${3rd}/busted/library",
        -- },
        -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
        library = vim.api.nvim_get_runtime_file("", true),
      },
    })
  end,
  settings = {
    Lua = {},
  },
})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local buf = args.buf
    vim.api.nvim_buf_set_keymap(
      buf,
      "n",
      "<leader>F",
      "<CMD>lua vim.lsp.buf.format()<CR><CMD>w<CR>",
      { desc = "Format the buffer by LSP" }
    )
  end,
})

local lspkind = require("lspkind")
local cmp = require("cmp")

cmp.setup({
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "path" },
  }),
  formatting = {
    format = lspkind.cmp_format(),
  },
  mapping = cmp.mapping.preset.insert(),
})

require("luasnip.loaders.from_vscode").lazy_load()
