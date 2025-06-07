return {
	{
		"m4xshen/hardtime.nvim",
		lazy = false,
		dependencies = { "MunifTanjim/nui.nvim" },
		opts = {},
	},
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
	{
		"neovim/nvim-lspconfig",
		opts = function(_, opts)
			local servers = { "pyright" }
			for _, server in ipairs(servers) do
				opts.servers[server] = opts.servers[server] or {}
			end
		end,
	},
}
