return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("catppuccin-latte")
    end,
  },
  { "ellisonleao/gruvbox.nvim", name = "gruvbox",  priority = 1000 },
  { "rose-pine/neovim",         name = "rose-pine" },
  { "EdenEast/nightfox.nvim" },
  { "rebelot/kanagawa.nvim" },
  { "folke/tokyonight.nvim",    lazy = false,      priority = 1000, opts = {} },
  { "shaunsingh/moonlight.nvim" },
  { "Mofiqul/dracula.nvim" },
  { "navarasu/onedark.nvim" },
  {
    "folke/styler.nvim",
    config = function()
      require("styler").setup({
        themes = {
          help = {colorscheme = 'catppuccin-frappe'},
          -- lazy = {},
          -- lua = {},
          -- markdown = {},
          -- python = {},
          oil = {colorscheme = 'catppuccin-frappe'},
        },
      })
    end,
  },
}
