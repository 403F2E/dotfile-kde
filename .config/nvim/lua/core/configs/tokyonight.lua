require("tokyonight").setup({
	style = "night",
	transparent = true,
	on_highlights = function(hl, c)
		-- Make Telescope background transparent and borders match background
		hl.TelescopeNormal = { bg = c.bg_dark, fg = c.fg_dark }
		hl.TelescopeBorder = { bg = c.bg_dark, fg = c.bg_dark }
		hl.TelescopePromptNormal = { bg = c.bg_dark }
		hl.TelescopePromptBorder = { bg = c.bg_dark, fg = c.bg_dark }
		hl.TelescopePromptTitle = { bg = c.bg_dark, fg = c.bg_dark }
		hl.TelescopePreviewTitle = { bg = c.bg_dark, fg = c.bg_dark }
		hl.TelescopeResultsTitle = { bg = c.bg_dark, fg = c.bg_dark }
	end,
})
