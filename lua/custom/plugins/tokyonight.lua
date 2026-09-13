return {
  "folke/tokyonight.nvim",
  priority = 1000, -- Ensure it loads first
  config = function()
    require('tokyonight').setup {
      styles = {
        comments = { italic = false },
      },
    }
  end,
}