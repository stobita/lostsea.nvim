local M = {}
local palette = require("lostsea.palette")

function M.setup()
	vim.g.colors_name = "lostsea"

	local groups = {
		Normal = {},
		Function = { fg = palette.colors.lostseaGreen },
	}

	for group, settings in pairs(groups) do
		vim.api.nvim_set_hl(0, group, settings)
	end
end

return M
