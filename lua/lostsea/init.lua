local M = {}
local palette = require("lostsea.palette")

function M.load()
	vim.g.colors_name = "lostsea"
	vim.o.termguicolors = true

	local groups = {
		Normal = {},
		Function = { fg = palette.colors.lostseaGreen },
		Keyword = { fg = palette.colors.lostseaGreen },
	}

	for group, settings in pairs(groups) do
		vim.api.nvim_set_hl(0, group, settings)
	end
end

return M
