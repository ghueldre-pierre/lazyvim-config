-- This file is also a documentation support for me.
-- Some comments comes from "oil.nvim" but some others not. DON'T DELETE UNLESS COPIED SOMEWHERE ELSE.
return {
  "stevearc/oil.nvim",
  -- Je désactive mais je conserve le script comme guide (au cas où)
  enabled = false,
  dependencies = {
    {
      "nvim-mini/mini.icons",
    },
  },
  -- [oil.nvim] Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
  opts = {
    -- Oil will take over directory buffers (e.g. `vim .` or `:e src/`)
    -- Set to false if you want some other plugin (e.g. netrw) to open when you edit directories.
    default_file_explorer = true,

    -- Send deleted files to the trash instead of permanently deleting them (:help oil-trash)
    delete_to_trash = true,

    view_options = {
      -- Show hidden files and directories.
      show_hidden = true,
    },
  },
  keys = {
    { "-", false },
    {
      "-",
      function()
        -- ouvre dans la fenêtre active
        return require("oil").open
        -- ouvre dans une fenêtre flottante
        --return require("oil").open_float
      end,
      desc = "Open parent directory",
    },
    -- MAJ : J'ai décidé de toujours ouvrir "oil" avec une fenêtre flottante, j'ai donc mis en commentaire le code qui suit.
    --[[
    -- This shortcut is set in LazyVim so we have to unset it
    { "<leader>-", false },
    {
      "<leader>-",
      function()
        return require("oil").open_float
      end,
      desc = "View parent directory",
    },
    --]]
  },

  config = function(_, opts)
    local oil = require("oil")
    oil.setup(opts)

    --vim.keymap.set("n", "-", oil.open)
  end,

  -- My first attempt but it didn't worked
  -- see : https://github.com/LazyVim/LazyVim/discussions/6557
  --config = true,
  --[[
  config = function(_, opts)
    local oil = require("oil")
    oil.setup(opts)

    -- Open parent directory in the current window.
    vim.keymap.set("n", "-", oil.open, { desc = "Open parent directory" })

    vim.keymap.del("n", "<Leader>-")
    -- Open parent directory in a floating window.
    vim.keymap.set("n", "<Leader>-", oil.toggle_float, { desc = "Open parent directory" })
  end,
  --]]
}
