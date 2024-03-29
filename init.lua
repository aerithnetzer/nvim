-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("mason").setup()

vim.g.copilot_assume_mapped = true
vim.g["pandoc#filetypes#handled"] = { "pandoc", "markdown", "latex" }
vim.g["pandoc#filetypes#pandoc_markdown"] = 0
vim.g["pandoc#biblio#sources"] = "b"
vim.g["pandoc#biblio#use_bibtool"] = 1
vim.g["pandoc#completion#bib#mode"] = "citeproc"
vim.g["zotcite_wait_attachment"] = 0
vim.g.copilot_assume_mapped = true
vim.g.livepreview_previewer = "sioyek"
vim.g.notes_directories = { "~/warlock/card-file" }
vim.g.livepreview_engine = "latexmk"
vim.g.vimtex_compiler_method = "latexmk"
vim.g["pandoc#biblio#bibtool_extra_args"] = "-r biblatex"
