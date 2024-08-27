-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("mini.move").setup()
-- disable copilot on start
vim.g.copilot_disable = true
vim.o.wrap = true
vim.o.wrap = true

-- set the colo scheme to default
vim.cmd("colorscheme default")

-- make the neovim background transparent
vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
