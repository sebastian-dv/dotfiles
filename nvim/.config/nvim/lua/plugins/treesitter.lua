return {
	{
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "javascript", "typescript", "cpp", "java", "c", "lua", "vim", "vimdoc", "query" },
			sync_install = false,
			auto_install = true,
			autotag = {
				enable = true,
			},
			highlight = { enable = true, additional_vim_regex_highlighting = false },
			indent = { enable = true },
		})
	end
	},
	{
		"windwp/nvim-ts-autotag"
	}
}
