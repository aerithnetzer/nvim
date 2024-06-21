-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("mini.move").setup()
require("papis").setup({ enable_keymaps = true })

-- Remap <Caps_Lock> to <Esc> (if the terminal emulator sends a custom sequence for Caps Lock)
vim.api.nvim_set_keymap("i", "<CapsLockSequence>", "<Esc>", { noremap = true })
vim.api.nvim_set_keymap("n", "<CapsLockSequence>", "<Esc>", { noremap = true })

-- Set colorscheme
