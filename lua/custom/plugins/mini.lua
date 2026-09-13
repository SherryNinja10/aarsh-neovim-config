return {
  "nvim-mini/mini.nvim",
  config = function()
    -- If a nerd font is available, load the icons module for pretty icons in various plugins.
    if vim.g.have_nerd_font then
      require('mini.icons').setup()
      -- Used for backwards compatibility with plugins that require `nvim-web-devicons` (e.g. telescope.nvim)
      MiniIcons.mock_nvim_web_devicons()
    end

    -- Better Around/Inside textobjects
    require('mini.ai').setup {
      mappings = {
        around_next = 'aa',
        inside_next = 'ii',
      },
      n_lines = 500,
    }

    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    require('mini.surround').setup()

    -- Simple and easy statusline.
    -- local statusline = require 'mini.statusline'
    -- statusline.setup { use_icons = vim.g.have_nerd_font }

    ---@diagnostic disable-next-line: duplicate-set-field
    -- statusline.section_location = function() return '%2l:%-2v' end
  end,
}
