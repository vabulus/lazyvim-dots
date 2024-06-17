-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Key mappings
vim.api.nvim_set_keymap("n", "j", "h", { noremap = true })
vim.api.nvim_set_keymap("n", "k", "k", { noremap = true })
vim.api.nvim_set_keymap("n", "l", "j", { noremap = true })
vim.api.nvim_set_keymap("n", "ö", "l", { noremap = true })

vim.keymap.set("n", "<space>e", ":Telescope file_browser<CR>")

vim.keymap.set("n", "<space>k", "<cmd>bprevious<CR>", { noremap = true, desc = "Prev Buffer" })
vim.keymap.set("n", "<S-l>", "<cmd>bnext<CR>", { noremap = true, silent = true, desc = "Next Buffer" })

-- #vim.keymap.set("n", "<space>e", ":Telescope file_browser<CR>")

-- open file_browser with the path of the current buffer
-- vim.keymap.set("n", "<space>E", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")

vim.api.nvim_set_keymap("i", "<C-V><C-H>", "<C-W>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-Backspace>", "<C-W>", { noremap = true, silent = true })

-- delete selection with backspace
vim.keymap.set("v", "<BS>", "d", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>e", ":NnnPicker %:p:h<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>E", ":NnnExplorer %:p:h<CR>", { noremap = true, silent = true })

-- Enter search mode with Ctrl + i
vim.keymap.set("n", "<C-i>", "/", { noremap = true, silent = true })

-- Undo with Ctrl + y
vim.keymap.set("n", "<C-y>", "u", { noremap = true, silent = true })

-- Skip word with Alt + Right Arrow
vim.keymap.set("n", "<A-Right>", "w", { noremap = true, silent = true })
vim.keymap.set("i", "<A-Right>", "<Esc>wi", { noremap = true, silent = true })
vim.keymap.set("v", "<A-Right>", "w", { noremap = true, silent = true })

-- Go one word backwards with Alt + Left Arrow
vim.keymap.set("n", "<A-Left>", "b", { noremap = true, silent = true })
vim.keymap.set("i", "<A-Left>", "<Esc>bi", { noremap = true, silent = true })
vim.keymap.set("v", "<A-Left>", "b", { noremap = true, silent = true })

-- BARBAR
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map("n", "<A-,>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<A-.>", "<Cmd>BufferNext<CR>", opts)
-- Re-order to previous/next
map("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
map("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)
-- Goto buffer in position...
map("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
map("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
map("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
map("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
map("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
map("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
map("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
map("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
map("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
map("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)
-- Pin/unpin buffer
map("n", "<A-p>", "<Cmd>BufferPin<CR>", opts)
-- Close buffer
map("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)
map("n", "<C-p>", "<Cmd>BufferPick<CR>", opts)
map("n", "<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
map("n", "<Space>bn", "<Cmd>BufferOrderByName<CR>", opts)
map("n", "<Space>bd", "<Cmd>BufferOrderByDirectory<CR>", opts)
map("n", "<Space>bl", "<Cmd>BufferOrderByLanguage<CR>", opts)
map("n", "<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)
