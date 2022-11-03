-- Loads Catppuccin color scheme. Then sets a different Comment highlight color using
-- the colors API
--local catppuccin = require("catppuccin")
vim.g.catppuccin_flavour = "mocha"
local colors = require("catppuccin.palettes").get_palette()

require("catppuccin").setup(
{ 
	custom_highlights = {
	    Comment = { fg = colors.overlay1 },
	}
}
)
vim.cmd[[colorscheme catppuccin]]


