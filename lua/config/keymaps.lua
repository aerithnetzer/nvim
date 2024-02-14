local map = vim.api.nvim_set_keymap
local opts = { silent = false, noremap = true }

-- Move to previous/next
map("n", "<Space>b,", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<Space>b.", "<Cmd>BufferNext<CR>", opts)

-- Re-order to previous/next
map("n", "<Space>b<", "<Cmd>BufferMovePrevious<CR>", opts)
map("n", "<Space>b>", "<Cmd>BufferMoveNext<CR>", opts)

-- Goto buffer in position...
for i = 1, 9 do
  map("n", string.format("<Space>b%d", i), string.format("<Cmd>BufferGoto %d<CR>", i), opts)
end
map("n", "<Space>b0", "<Cmd>BufferLast<CR>", opts)

-- Pin/unpin buffer
map("n", "<Space>bp", "<Cmd>BufferPin<CR>", opts)

-- Close buffer
map("n", "<Space>bc", "<Cmd>BufferClose<CR>", opts)
-- Restore buffer
map("n", "<Space>bsc", "<Cmd>BufferRestore<CR>", opts)

-- Magic buffer-picking mode
map("n", "<Space>bp", "<Cmd>BufferPick<CR>", opts)
map("n", "<Space>bp", "<Cmd>BufferPickDelete<CR>", opts)

-- Sort automatically by...
map("n", "<Space>bbb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
map("n", "<Space>bbd", "<Cmd>BufferOrderByDirectory<CR>", opts)
map("n", "<Space>bbl", "<Cmd>BufferOrderByLanguage<CR>", opts)
map("n", "<Space>bbw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)

-- Copilot keymaps
map("n", "<Space>cci", "<Cmd>CopilotChatInPlace<CR>", opts)
