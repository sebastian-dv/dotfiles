return {
  --{ "ellisonleao/gruvbox.nvim" },

  {
    "darianmorat/gruvdark.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvdark",
    },
  },
}
