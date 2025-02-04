-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- boostrap mini plugins
require("mini.comment").setup({})
require("mini.icons").setup({})
require("mini.surround").setup()
require("mini.move").setup()

-- boostrap LSP and LSP server config
require("lspconfig").ruff.setup({})
require("lspconfig").pyright.setup({})
require("lspconfig").tinymist.setup({})
require("lualine").setup({
  options = {
    theme = {
      normal = {
        a = { fg = "#ffffff", bg = "#0000ff", gui = "bold" },
        b = { fg = "#ffffff", bg = "#000080" },
        c = { fg = "#ffffff", bg = "#000040" },
      },
      insert = {
        a = { fg = "#000000", bg = "#00ff00", gui = "bold" },
        b = { fg = "#000000", bg = "#008000" },
        c = { fg = "#000000", bg = "#004000" },
      },
      visual = {
        a = { fg = "#000000", bg = "#ff0000", gui = "bold" },
        b = { fg = "#000000", bg = "#800000" },
        c = { fg = "#000000", bg = "#400000" },
      },
      replace = {
        a = { fg = "#000000", bg = "#ffff00", gui = "bold" },
        b = { fg = "#000000", bg = "#808000" },
        c = { fg = "#000000", bg = "#404000" },
      },
      command = {
        a = { fg = "#000000", bg = "#ff00ff", gui = "bold" },
        b = { fg = "#000000", bg = "#800080" },
        c = { fg = "#000000", bg = "#400040" },
      },
      inactive = {
        a = { fg = "#808080", bg = "#303030", gui = "bold" },
        b = { fg = "#808080", bg = "#303030" },
        c = { fg = "#808080", bg = "#303030" },
      },
    },
  },
})
vim.api.nvim_set_keymap("t", "<Esc><Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })
