return {
  -- Your existing dashboard-nvim setup
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function()
      -- Configuration for dashboard-nvim
    end,
  },

  -- vim-dadbod for database interaction
  {
    "tpope/vim-dadbod",
    config = function()
      -- You can place vim-dadbod specific configurations here
    end,
  },

  -- vim-dadbod-ui for the user interface component
  {
    "kristijanhusak/vim-dadbod-ui",
    config = function()
      -- Adding keymap within the plugin config
      vim.api.nvim_set_keymap("n", "<leader>db", ":DBUI<CR>", { noremap = true, silent = true })
    end,
  },

  -- Continue adding other plugins as needed
}
