return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        theme = "auto", -- Retains your automatic colorscheme matching
        globalstatus = true, -- Keeps one statusline across all splits
        component_separators = '',
        section_separators = { left = '', right = '' },
      },
      sections = {
        lualine_a = { 
          -- Adds the left outer bubble
          { 'mode', separator = { left = '' }, padding = { right = 2 } } 
        },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'encoding', 'fileformat' },
        lualine_y = { 'filetype', 'progress' },
        lualine_z = {
          -- Adds the right outer bubble
          { 'location', separator = { right = '' }, padding = { left = 2 } },
        },
      },
      inactive_sections = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },
      },
    })
  end,
}







































