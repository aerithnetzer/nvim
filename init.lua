-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- boostrap mini plugins
require("mini.comment").setup({})
require("mini.icons").setup({})
require("mini.surround").setup({})
require("mini.diff").setup({})
require("mini.git").setup({})
require("mini.move").setup({
  mappings = {
    left = "H",
    right = "L",
    down = "J",
    up = "K",
  },
})

-- boostrap LSP and LSP server config
require("lspconfig").jedi_language_server.setup({})

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
vim.cmd("highlight Normal guibg=#000000")
local cmp = require("cmp")
cmp.setup({
  mapping = {
    ["<C-k>"] = cmp.mapping.scroll_docs(-4),
    ["<C-j>"] = cmp.mapping.scroll_docs(4),
  },
})
vim.api.nvim_set_keymap(
  "n",
  "<LocalLeader>r",
  "<Cmd>MagmaEvaluateOperator<CR>",
  { noremap = true, silent = true, expr = true }
)
vim.api.nvim_set_keymap("n", "<LocalLeader>rr", "<Cmd>MagmaEvaluateLine<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<LocalLeader>r", "<Cmd><C-u>MagmaEvaluateVisual<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<LocalLeader>rc", "<Cmd>MagmaReevaluateCell<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<LocalLeader>rd", "<Cmd>MagmaDelete<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<LocalLeader>ro", "<Cmd>MagmaShowOutput<CR>", { noremap = true, silent = true })

vim.g.magma_automatically_open_output = false
vim.g.magma_image_provider = "ueberzug"
-- Function to initialize Python in Magma
function MagmaInitPython()
  vim.cmd([[
        MagmaInit python3
        MagmaEvaluateArgument a=5
    ]])
end

-- Function to initialize C# in Magma
function MagmaInitCSharp()
  vim.cmd([[
        MagmaInit .net-csharp
        MagmaEvaluateArgument Microsoft.DotNet.Interactive.Formatting.Formatter.SetPreferredMimeTypesFor(typeof(System.Object),"text/plain");
    ]])
end

-- Function to initialize F# in Magma
function MagmaInitFSharp()
  vim.cmd([[
        MagmaInit .net-fsharp
        MagmaEvaluateArgument Microsoft.DotNet.Interactive.Formatting.Formatter.SetPreferredMimeTypesFor(typeof<System.Object>,"text/plain")
    ]])
end

-- Register the commands in Neovim
vim.cmd([[
    command MagmaInitPython lua MagmaInitPython()
    command MagmaInitCSharp lua MagmaInitCSharp()
    command MagmaInitFSharp lua MagmaInitFSharp()
]])
-- Customize LSP popup colors
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1e1e1e", fg = "#dcdcdc" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#1e1e1e", fg = "#5f5f5f" })
vim.api.nvim_set_hl(0, "Pmenu", { bg = "#2d2d2d", fg = "#dcdcdc" })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#5f5f5f", fg = "#ffffff" })
