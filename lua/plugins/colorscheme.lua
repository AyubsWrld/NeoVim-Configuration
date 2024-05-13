-- DarkRose

-- -- Load the "darkrose.nvim" plugin
-- local darkrose_colorscheme = {
--   "water-sucks/darkrose.nvim",
--   config = function()
--     -- Setup darkrose with potential configurations
--     require("darkrose").setup({
--       -- Configure darkrose here; if you want a transparent background, you might need to set this in the theme's setup function if it supports it
--       -- For darkrose, if it does not support it natively, you'll adjust the background after applying the colorscheme
--     })
--     vim.cmd([[colorscheme darkrose]])
--
--     -- Make the background transparent, assuming darkrose doesn't directly support it in setup
--     vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
--     vim.cmd("highlight NonText guibg=NONE") -- For 'NonText' characters like '~' in empty lines
--   end,
-- }
--
-- -- Define your custom blue and purple color palette
-- -- Note: Custom color setup can remain if you plan to override specific highlight groups further than the colorscheme provides
-- local custom_colors = {
--   -- Your custom color definitions here, unchanged from your original script
-- }
--
-- -- Function to set custom colors - you may modify or omit this part if it's not needed with darkrose
-- local function set_custom_colors()
--   -- Your custom highlight commands here, unchanged from your original script
-- end
--
-- -- Optionally set the custom colors after loading the colorscheme
-- -- set_custom_colors() -- Uncomment this line if you need to apply your custom colors on top of darkrose
--
-- -- Export the configuration for your Neovim setup
-- return {
--   { darkrose_colorscheme },
-- }

-- DarkRose

-- oxocarbon

local oxocarbon = {
  "nyoom-engineering/oxocarbon.nvim",
  config = function()
    -- Setup oxocarbon with potential configurations
    vim.cmd([[colorscheme oxocarbon]])

    -- Make the general background transparent
    vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
    vim.cmd("highlight NonText guibg=NONE") -- For 'NonText' characters like '~' in empty lines

    -- Make the number line transparent
    vim.cmd("highlight LineNr guibg=NONE") -- For the line numbers
    vim.cmd("highlight CursorLineNr guibg=#370054") -- For the line number of the cursor line
  end,
}

-- Define your custom blue and purple color palette
-- Note: Custom color setup can remain if you plan to override specific highlight groups further than the colorscheme provides
local custom_colors = {
  -- Your custom color definitions here, unchanged from your original script
}

-- Function to set custom colors - you may modify or omit this part if it's not needed with oxocarbon
local function set_custom_colors()
  -- Your custom highlight commands here, unchanged from your original script
end

-- Optionally set the custom colors after loading the colorscheme
-- set_custom_colors() -- Uncomment this line if you need to apply your custom colors on top of oxocarbon

-- Export the configuration for your Neovim setup
return {
  { oxocarbon },
}
-- oxocarbon
