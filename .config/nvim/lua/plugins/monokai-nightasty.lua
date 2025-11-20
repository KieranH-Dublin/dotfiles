return {
  "polirritmico/monokai-nightasty.nvim",
  lazy = false,
  priority = 1000,
  keys = {
    { "<leader>tt", "<Cmd>MonokaiToggleLight<CR>", desc = "Monokai-Nightasty: Toggle dark/light theme." },
  },
  ---@module "monokai-nightasty"
  ---@type monokai.UserConfig
  opts = {
    dark_style_background = "transparent", -- default | dark | transparent | #RRGGBB
    light_style_background = "default", -- default | dark | transparent | #RRGGBB
    markdown_header_marks = true,
    -- hl_styles = { comments = { italic = false } },
    terminal_colors = function(colors) return { fg = colors.fg_dark } end,
  },
  config = function(_, opts)
    vim.o.cursorline = true -- Highlight line at the cursor position
    vim.o.background = "dark" -- Default to dark theme

    require("monokai-nightasty").load(opts)
  end,
}

