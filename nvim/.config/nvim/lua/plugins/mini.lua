return {
	'echasnovski/mini.nvim',
	version = false,
	config = function()
		require('mini.surround').setup({})
		require('mini.move').setup({
			-- Module mappings. Use `''` (empty string) to disable one.
			mappings = {
				-- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
				left = '<M-h>',
				right = '<M-l>',
				down = '<M-j>',
				up = '<M-k>',

				-- Move current line in Normal mode
				line_left = '<M-h>',
				line_right = '<M-l>',
				line_down = '<M-j>',
				line_up = '<M-k>',
			}
		})
		-- Add surrounding with sa (in visual mode or on motion).
		-- Delete surrounding with sd.
		-- Replace surrounding with sr.
		-- Find surrounding with sf or sF (move cursor right or left).
		-- Highlight surrounding with sh.
	end
}
