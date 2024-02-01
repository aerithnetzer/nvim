-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.g.copilot_assume_mapped = true
vim.g.livepreview_previewer = "sioyek"
vim.g.notes_directories = { "~/warlock/card-file" }
vim.g.livepreview_engine = "xelatex"
