return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {},
	config = function()
		local highlight = {
			"mellow"
		}
		local hooks = require "ibl.hooks"
		-- create the highlight groups in the highlight setup hook, so they are reset
		-- every time the colorscheme changes
		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "mellow", { fg = "#2A2A2D" })
		end)
		require("ibl").setup({
			indent = {
				highlight = highlight,
			}
		})
	end
}
