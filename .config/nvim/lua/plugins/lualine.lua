return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    options = { theme = "horizon" },
  },
  config = function(spec, opts)
    require("lualine").setup(opts)
  end,
}
