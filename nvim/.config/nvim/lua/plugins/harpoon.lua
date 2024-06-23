return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
		vim.keymap.set("n", "<a-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

		-- use alt to switch
		vim.keymap.set("n", "<a-j>", function() harpoon:list():select(1) end)
		vim.keymap.set("n", "<a-k>", function() harpoon:list():select(2) end)
		vim.keymap.set("n", "<a-l>", function() harpoon:list():select(3) end)
		vim.keymap.set("n", "<a-;>", function() harpoon:list():select(4) end)

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
		vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
	end
}
