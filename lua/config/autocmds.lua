-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- comes from this tutorial : https://www.youtube.com/watch?v=ekMIIAqTZ34
--[[local my_test_group = vim.api.nvim_create_augroup("my_test_group", { clear = false })
vim.api.nvim_create_autocmd("BufEnter", { command = "echo 'Hello'", group = my_test_group })--]]

-- disable spell check for certain types of files
-- also reset "conceallevel" to its default
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "text" },
  callback = function()
    vim.opt_local.spell = false
    vim.opt.conceallevel = 0

    -- see : https://cmp.saghen.dev/recipes.html#disable-per-filetype-buffer
    vim.b.completion = false
  end,
})
