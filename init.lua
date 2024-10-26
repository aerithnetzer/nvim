-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("mini.move").setup()
require("papis").setup({
  -- Your configuration goes here
  enable_keymaps = true,
})
-- disable copilot on start
vim.g.copilot_disable = true
vim.o.wrap = true
vim.o.wrap = true

-- set wrap to linebreak
vim.o.linebreak = true

vim.g.minimap_auto_start = 1
vim.cmd.colorscheme("catppuccin")
vim.api.nvim_set_keymap("v", "<leader>r", "<Plug>SnipRun", { silent = true })
vim.api.nvim_set_keymap("n", "<leader>r", "<Plug>SnipRun", { silent = true })

-- set shorter name for keymap function
local kmap = vim.keymap.set

-- F5 processes the document once, and refreshes the view
kmap({ "n", "v", "i" }, "<F5>", function()
  require("knap").process_once()
end)

-- F6 closes the viewer application, and allows settings to be reset
kmap({ "n", "v", "i" }, "<F6>", function()
  require("knap").close_viewer()
end)

-- F7 toggles the auto-processing on and off
kmap({ "n", "v", "i" }, "<F7>", function()
  require("knap").toggle_autopreviewing()
end)

-- F8 invokes a SyncTeX forward search, or similar, where appropriate
kmap({ "n", "v", "i" }, "<F8>", function()
  require("knap").forward_jump()
end)

vim.api.nvim_set_keymap(
  "n",
  "<space>e",
  ':lua vim.diagnostic.open_float(0, {scope="line"})<CR>',
  { noremap = true, silent = true }
)

require("lspconfig").harper_ls.setup({
  filetypes = { "markdown", "tex" },
  settings = {
    ["harper-ls"] = {
      linters = {
        spell_check = false,
        spelled_numbers = false,
        an_a = true,
        sentence_capitalization = true,
        unclosed_quotes = true,
        wrong_quotes = false,
        long_sentences = true,
        repeated_words = true,
        spaces = true,
        matcher = true,
        correct_number_suffix = true,
        number_suffix_capitalization = true,
        multiple_sequential_pronouns = true,
        linking_verbs = false,
        avoid_curses = true,
        terminating_conjunctions = true,
      },
    },
  },
})

local lspconfig = require("lspconfig")

require("lspconfig").marksman.setup({})
