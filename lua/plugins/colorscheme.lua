return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = true,
  ---@type CatppuccinOptions
  opts = {
    transparent_background = true,
    integrations = {
      aerial = true,
      alpha = true,
      cmp = true,
      dap = true,
      dap_ui = true,
      gitsigns = true,
      illuminate = true,
      indent_blankline = true,
      markdown = true,
      mason = true,
      native_lsp = { enabled = true },
      neotree = true,
      notify = true,
      semantic_tokens = true,
      symbols_outline = true,
      telescope = true,
      treesitter = true,
      ts_rainbow = false,
      ufo = true,
      which_key = true,
      window_picker = true,
      colorful_winsep = { enabled = true, color = "lavender" },
    },
    custom_highlights = function(colors)
      return {
        NeoTreeTabInactive = { fg = colors.overlay1, bg = colors.base }, -- Inactive tabs
        NeoTreeTabActive = { fg = colors.text, bg = colors.surface0, style = { "bold" } }, -- Active tab
        NeoTreeTabSeparatorInactive = { fg = colors.base, bg = colors.base }, -- Separator for inactive tab
        NeoTreeTabSeparatorActive = { fg = colors.surface0, bg = colors.surface0 }, -- Separator for active tab
        NeoTreeSourceSelector = { fg = colors.lavender, bg = colors.mantle, style = { "bold" } }, -- Label background
      }
    end,
  },
  specs = {
    {
      "akinsho/bufferline.nvim",
      optional = true,
      opts = function(_, opts)
        return require("astrocore").extend_tbl(opts, {
          highlights = require("catppuccin.groups.integrations.bufferline").get(),
        })
      end,
    },
    {
      "nvim-telescope/telescope.nvim",
      optional = true,
      opts = {
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
      },
    },
  },
}
