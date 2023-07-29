vim.g.mapleader = " "

-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "-", vim.cmd.Ex)

-- move selected lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keeps cursor in the same place
vim.keymap.set("n", "J", "mnJ'z ")
-- make sure cursor is in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- when hightlighting text you can paste over it without overwriting reqister
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

--vim.keymap.set("n", "<leader>d", "\"_d")
--vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- quick fix and nagivation whatever this is

-- this crazy thing allows to quickly replace all occurances of the word you're on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>mir", "<cmd>CellularAutomaton make_it_rain<CR>")
vim.keymap.set('n', "<leader>pas", "<cmd>PackerSync<CR>")
vim.keymap.set('n', "<leader><leader>", "<cmd>so<CR>")
vim.keymap.set('n', "<leader>cmp", "<cmd>lua ColorMyPencils()<CR>")

