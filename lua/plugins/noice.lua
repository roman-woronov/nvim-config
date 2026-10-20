-- Free up <C-b> (used for goto definition in config/keymaps.lua);
-- noice otherwise binds it to scroll hover docs.
return {
  {
    "folke/noice.nvim",
    keys = {
      { "<c-b>", false, mode = { "i", "n", "s" } },
    },
  },
}
