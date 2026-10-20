-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Ctrl-b: jump to definition (replaces the default page-up scroll)
vim.keymap.set("n", "<C-b>", vim.lsp.buf.definition, { desc = "Goto Definition" })
