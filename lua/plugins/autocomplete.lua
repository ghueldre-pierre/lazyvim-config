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

return {
  "saghen/blink.cmp",
  opts = {
    completion = {
      -- Ghost text shows a preview of the currently selected item as virtual text inline.
      -- LazyVim by default set it to "true" via the global variable "vim.g.ai_cmp"
      -- see :
      -- - https://www.lazyvim.org/configuration/general#options (Default Options tab)
      -- - https://www.lazyvim.org/extras/coding/blink#blinkcmp
      ghost_text = { enabled = false },
    },
  },
}
