return {
  {
    "folke/tokyonight.nvim",
    -- works but should not be necessary according to the documentation
    -- since we have set vim.o.background to light in "lua/config/options.lua"
    --opts = { style = "day" },

    -- I set it like that since the "bug" is not yet fixed
    -- link to the issue : https://github.com/folke/tokyonight.nvim/issues/739
    --opts = { style = "day" },

    -- does not work either, contrary to what says the documentation which
    -- is that : "TokyoNight uses the default options, unless setup is explicitly called."
    --config = true,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
