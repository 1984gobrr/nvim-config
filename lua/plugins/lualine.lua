local diagnostics = {
	"diagnostics",
	sources = { "nvim_diagnostic" },
	sections = { "error", "warn" },
	symbols = { error = " ", warn = " " },
	colored = true,
	always_visible = true,
}

local diff = {
	"diff",
	colored = true,
	icons_enabled = true,
	symbols = { added = " ", modified = " ", removed = " " },
	cond = hide_in_width,
}

local filetype = {
	"filetype",
	icons_enabled = true,
}

return {
	'nvim-lualine/lualine.nvim',
	lazy = false,
	opts = {
		options = {
			theme = 'tokyonight',
			globalstatus = true,
			icons_enabled = true,
		},
		sections = {
			lualine_a = { "mode", },
			lualine_b = { "branch", diff },
			lualine_c = { "filename" },
			lualine_x = { diagnostics, filetype },
			lualine_y = { "location" },
			lualine_z = { "progress" },
		},
	}
}
