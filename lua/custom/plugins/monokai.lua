return {
  "loctvl842/monokai-pro.nvim",
  priority = 1000, -- Ensure it loads first alongside tokyonight
  config = function()
    require("monokai-pro").setup({
      transparent_background = false,
      terminal_colors = true,
      devicons = true,
      filter = "pro", -- Available filters: classic | octagon | pro | machine | ristretto | spectrum
    })
  end
}

