-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- boostrap mini plugins
require("mini.move").setup({
  mappings = {
    left = "H",
    right = "L",
    down = "J",
    up = "K",
  },
})
