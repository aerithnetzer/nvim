-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("mini.move").setup()
-- disable copilot on start
vim.g.copilot_disable = true
vim.o.wrap = true
vim.o.wrap = true
