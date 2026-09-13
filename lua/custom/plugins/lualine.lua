return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()

    local bubble = { left = '', right = ' ' }
    require("lualine").setup({
      options = {
        theme = "auto", -- Automatically matches your active colorscheme (like Monokai)
        globalstatus = true, -- Uses one statusline across all splits instead of one per window
      },
      
      sections = {
        lualine_a = { 
          { "mode", separator = bubble, padding = 1 } 
        },
        lualine_b = {
          { "branch", separator = bubble, padding = 1 },
          { "diff", separator = bubble, padding = 1 },
          { "diagnostics", separator = bubble, padding = 1 },
        },
        lualine_c = {
          { "filename", separator = bubble, padding = 1 },
        },
        lualine_x = {
          { "encoding", separator = bubble, padding = 1 },
          { "fileformat", separator = bubble, padding = 1 },
          { "filetype", separator = bubble, padding = 1 },
        },
        lualine_y = {
          { "progress", separator = bubble, padding = 1 },
        },
        lualine_z = {
          -- We drop the trailing space on the very last bubble so it sits flush against the right wall
          { "location", separator = { left = '', right = '' }, padding = 1 },
        },
      },
    })
  end,
}
