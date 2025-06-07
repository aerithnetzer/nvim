-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..

vim.lsp.enable("pyrefly")
vim.lsp.enable("markdown_oxide")
-- boostrap mini plugins
require("mini.move").setup({
	mappings = {
		left = "H",
		right = "L",
		down = "J",
		up = "K",
	},
})
