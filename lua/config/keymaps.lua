-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Key mappings
vim.api.nvim_set_keymap("n", "j", "h", { noremap = true })
vim.api.nvim_set_keymap("n", "k", "k", { noremap = true })
vim.api.nvim_set_keymap("n", "l", "j", { noremap = true })
vim.api.nvim_set_keymap("n", "ö", "l", { noremap = true })
