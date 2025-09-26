-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Can help in enhancing performances
-- see : https://github.com/LazyVim/LazyVim/discussions/326
vim.lsp.set_log_level("OFF")

-- vim.opt.background does not work but vim.o : yes
vim.o.background = "light"
