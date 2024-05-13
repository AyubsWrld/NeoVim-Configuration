return {
  "ThePrimeagen/harpoon",
  requires = { "nvim-lua/plenary.nvim" },
  config = function()
    require("harpoon").setup({
      -- Here you can add any custom settings you might want for Harpoon
      -- For example:
      menu = {
        width = vim.api.nvim_win_get_width(0) - 4,
      },
    })

    -- Optionally add keybindings specific to Harpoon
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }
    map("n", "<Leader>ha", '<Cmd>lua require("harpoon.mark").add_file()<CR>', opts)
    map("n", "<Leader>hm", '<Cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>', opts)
    map("n", "<Leader>hn", '<Cmd>lua require("harpoon.ui").nav_next()<CR>', opts)
    map("n", "<Leader>hp", '<Cmd>lua require("harpoon.ui").nav_prev()<CR>', opts)
  end,
}
