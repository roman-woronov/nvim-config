-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Absolute line numbers instead of LazyVim's default relative ones
vim.opt.relativenumber = false

-- Share yank/paste with the OS clipboard (LazyVim skips this over SSH)
vim.opt.clipboard = "unnamedplus"
