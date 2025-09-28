-- I have chosen to deactivate autocompletion for
-- certain type of files in "config/autocmds.lua"
-- see : https://cmp.saghen.dev/recipes.html#disable-per-filetype-buffer
--[[return {
  {
    "saghen/blink.cmp",
    opts = {
      enabled = function()
        return not vim.tbl_contains({
          "markdown",
        }, vim.bo.filetype)
      end,
    },
  },
}--]]

-- to avoid potential warnings
return {}
