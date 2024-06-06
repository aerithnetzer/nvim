-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("mini.move").setup()
require("papis").setup({ enable_keymaps = true })

-- Set colorscheme to default
vim.cmd("colorscheme default")
