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

vim.keymap.del("n", "K")
vim.keymap.del("n", "<S-k>")

vim.keymap.set("n", "<space>k", "<cmd>bprevious<CR>", { noremap = true, desc = "Prev Buffer" })
vim.keymap.set("n", "<S-l>", "<cmd>bnext<CR>", { noremap = true, silent = true, desc = "Next Buffer" })
-- open file_browser with the path of the current buffer
vim.keymap.set("n", "<space>E", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")

-- Map Ctrl + H to delete the previous word in normal mode
