return {
  {
    "nvim-mini/mini.pairs",
    enabled = false,
  },
  {
    "folke/snacks.nvim",
    opts = {
      explorer = { enabled = false },
      notifier = { enabled = false },
    },
  },
  {
    -- disabled because it does not display correctly certain type of messages
    -- like : verbose set conceallevel
    -- and also because a lot of issues have not yet been handled
    -- hence the project does not seem to be very active
    "folke/noice.nvim",
    enabled = false,
  },
}
