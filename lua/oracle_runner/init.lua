local M = {}

function M.setup()
	local colors = {
		bg = "#000000",
		fg = "#D5D0B6",
		red = "#E74700",
		blue = "#949494",
		yellow = "#F19801",
		brown = "#B37651",
		gray_light = "#615362",
		gray_dark = "#493942",
	}

	local highlights = {
		Normal = { fg = colors.fg, bg = colors.bg },
		Comment = { fg = colors.gray_light, italic = true },
		Keyword = { fg = colors.blue, bold = true },
		String = { fg = colors.yellow },
		Number = { fg = colors.red },
		LineNr = { fg = colors.gray_light },
		CursorLine = { bg = colors.gray_dark },
		StatusLine = { fg = colors.brown, bg = colors.gray_dark },
		Visual = { bg = colors.brown, fg = colors.bg },

		-- treesitter
		["@variable"] = { fg = colors.fg },
		["@keyword"] = { fg = colors.blue, bold = true },
		["@function"] = { fg = colors.red },

		TelescopeBorder = { fg = colors.gray_light },
	}

	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
