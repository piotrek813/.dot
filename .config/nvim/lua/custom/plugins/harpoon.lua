return {
	{
		'ThePrimeagen/harpoon',
		dependencies = {
			'nvim-lua/plenary.nvim',
		},
		keys = {
			{
				"<leader>a",
				require("harpoon.mark").add_file,
				mode = "n",
				desc =
				"Harpoon [a]dd mark"
			},
			{ "<C-h>", function() require("harpoon.ui").nav_file(1) end, mode = "n" },
			{ "<C-q>", function() require("harpoon.ui").nav_file(2) end, mode = "n" },
			{ "<C-s>", function() require("harpoon.ui").nav_file(4) end, mode = "n" },
			{ "<C-n>", function() require("harpoon.ui").nav_file(3) end, mode = "n" },
			{
				"<C-e>",
				require("harpoon.ui").toggle_quick_menu,
				mode = "n",
				desc =
				"Harpoon toogle quick menu"
			},
		},
		config = function()
			require("telescope").load_extension('harpoon')
		end
	}
}
