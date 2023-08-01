return {
	{
		'tpope/vim-fugitive',
		keys = {
			{
				"<leader>gs", vim.cmd.Git, mode = "n", desc = "[G]it [s]tatus",
			},
			{
				"<leader>ga",
				"<cmd>Git add .<CR>",
				mode = "n",
				desc = "[G]it [a]dd",
			},
			{
				"<leader>gc",
				"<cmd>Git commit<CR>",
				mode = "n",
				desc = "[G]it [c]ommit",
			},
			{
				"<leader>gca",
				"<cmd>Git add .<bar>Git commit<CR>",
				mode = "n",
				desc = "[G]it [c]ommit [a]ll",
			},
			{
				"<leader>gl",
				"<cmd>Git log --oneline<cr>",
				mode = "n",
				desc = "[G]it [l]og",
			},
			{
				"<leader>gp",
				"<cmd>Git push<cr>",
				mode = "n",
				desc = "[G]it [p]ush",
			},
		}
	}
}
