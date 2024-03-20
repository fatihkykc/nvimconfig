return {
  "pappasam/nvim-repl",
  init = function()
    vim.g["repl_filetype_commands"] = {
      javascript = "node",
      python = "ipython --no-autoindent",
    }

  end,
  keys = {
    { "<leader>rt", "<cmd>ReplToggle<cr>",  desc = "Toggle nvim-repl" },
    { "<BS>", "<cmd>ReplRunCell<cr>", desc = "nvim-repl run cell" },

    { "<leader>rr", "<Plug>ReplSendLine", desc = "nvim-repl run line" },
  },
}
