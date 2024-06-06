return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				hijack_netrw_behavior = "open_default",
										-- "open_current",
										-- "disabled", 
			}
		})
		vim.keymap.set('n', '<Leader>n', ':Neotree <CR>')
		-- <C-w-w> to switch between windows
	end
}
