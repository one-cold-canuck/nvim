-- TODO: (GH)
-- TODO(gerald):
-- TODO():
-- TODO
--
return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("todo-comments").setup {}
    end,
    event = "User AstroFile",
    cmd = "TodoQuickFix",
    keys = {
      { "<leader>fT", "<cmd>TodoTelescope<cr>" }, desc = "Open TODOs in Telescope" },
    pattern = [[\b(KEYWORDS):]],
  },
}
