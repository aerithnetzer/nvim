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

require("lualine").setup({
  options = {
    theme = {
      normal = {
        a = { fg = "#ffffff", bg = "#0000ff", gui = "bold" },
        b = { fg = "#ffffff", bg = "#000000" },
        c = { fg = "#ffffff", bg = "#000000" },
        z = { fg = "#808080", bg = "#000000" },
      },
      insert = {
        a = { fg = "#ffffff", bg = "#00ff00", gui = "bold" },
        b = { fg = "#ffffff", bg = "#000000" },
        c = { fg = "#ffffff", bg = "#000000" },
        z = { fg = "#808080", bg = "#000000" },
      },
      visual = {
        a = { fg = "#000000", bg = "#ff0000", gui = "bold" },
        b = { fg = "#ffffff", bg = "#000000" },
        c = { fg = "#ffffff", bg = "#000000" },
        z = { fg = "#808080", bg = "#000000" },
      },
      replace = {
        a = { fg = "#ffffff", bg = "#ffff00", gui = "bold" },
        b = { fg = "#ffffff", bg = "#000000" },
        c = { fg = "#ffffff", bg = "#000000" },
        z = { fg = "#ffffff", bg = "#000000" },
      },
      command = {
        a = { fg = "#ffffff", bg = "#ff00ff", gui = "bold" },
        b = { fg = "#ffffff", bg = "#000000" },
        c = { fg = "#ffffff", bg = "#000000" },
        z = { fg = "#808080", bg = "#000000" },
      },
      inactive = {
        a = { fg = "#ffffff", bg = "#303030", gui = "bold" },
        b = { fg = "#ffffff", bg = "#000000" },
        c = { fg = "#ffffff", bg = "#000000" },
        z = { fg = "#808080", bg = "#000000" },
      },
      terminal = {
        a = { fg = "#ffffff", bg = "#00ffff", gui = "bold" },
        b = { fg = "#ffffff", bg = "#000000" },
        c = { fg = "#ffffff", bg = "#000000" },
        z = { fg = "#808080", bg = "#000000" },
      },
    },
  },
})
vim.api.nvim_set_keymap("t", "<Esc><Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })

-- Change the background color to #000000
local cmp = require("cmp")
cmp.setup({
  mapping = {
    ["<C-k>"] = cmp.mapping.scroll_docs(-4),
    ["<C-j>"] = cmp.mapping.scroll_docs(4),
  },
})
