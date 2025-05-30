return {
	{
	"hrsh7th/nvim-cmp",
	dependencies = {
		-- 'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-cmdline'
	},
	config = function()
		local cmp = require'cmp'
		require("luasnip.loaders.from_vscode").lazy_load()

		cmp.setup({
			snippet = {
				-- REQUIRED - you must specify a snippet engine
				expand = function(args)
					require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
				end,
			},
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			mapping = cmp.mapping.preset.insert({
				['<C-b>'] = cmp.mapping.scroll_docs(-4),
				['<C-f>'] = cmp.mapping.scroll_docs(4),
				['<C-Space>'] = cmp.mapping.complete(),
				['<C-e>'] = cmp.mapping.abort(),
				['<CR>'] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
			}),
			sources = cmp.config.sources({
				{ name = 'luasnip' },
				{
					name = 'nvim_lsp',
					entry_filter = function(entry, ctx)
						if entry:get_kind() == 1 then
							return false
						end
						return true
					end
				}, -- For luasnip users.
				}, {
					{ name = 'buffer' },
			})
		})
	end
	},
	{
	"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets"
		},
	},
	{
	"hrsh7th/cmp-nvim-lsp",
	}
}
