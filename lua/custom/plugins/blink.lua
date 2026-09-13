return {
  "saghen/blink.cmp",
  version = "1.*",
  dependencies = {
    {
      "L3MON4D3/LuaSnip",
      version = "2.*",
      config = function()
        require('luasnip').setup {}
      end,
    },
    -- "rafamadriz/friendly-snippets", -- Uncomment when you want to add premade snippets
  },
  config = function()
    -- Uncomment if using friendly-snippets
    -- require('luasnip.loaders.from_vscode').lazy_load()

    require('blink.cmp').setup {
      keymap = {
        preset = 'default',
      },
      appearance = {
        nerd_font_variant = 'mono',
      },
      completion = {
        documentation = { auto_show = false, auto_show_delay_ms = 500 },
      },
      sources = {
        default = { 'lsp', 'path', 'snippets' },
      },
      snippets = { preset = 'luasnip' },
      fuzzy = { implementation = 'lua' },
      signature = { enabled = true },
    }
  end,
}