vim.g.mapleader = " "

local keymap = vim.keymap

--system clipboard
--copy
keymap.set({ "n", "v" }, "<leader>y", "\"+y")
keymap.set({ "n", "v" }, "<leader>Y", "\"+Y")
--paste
keymap.set("n", "<leader>p", "\"+p")
keymap.set("n", "<leader>P", "\"+P")

--nohls
keymap.set("n", "<leader>nhl", ":nohls<CR>")

--telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

keymap.set("n", "<leader>fe", ":Explore<cr>")
