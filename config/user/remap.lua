-- ***SpAcE*** bar
vim.g.mapleader = " "

-- Yep, we all know this one
vim.api.nvim_create_user_command('W', ":w", { nargs = 0 })

-- Tree
vim.keymap.set("n", "<leader>q", "<cmd>NvimTreeToggle<CR>")

-- tab << or >>
vim.keymap.set("n", "<Tab>", ">>_")
vim.keymap.set("n", "<S-Tab>", "<<_")
vim.keymap.set("v", "<Tab>", ">>_")
vim.keymap.set("v", "<S-Tab>", "<<_")

-- Move lines up / down
vim.keymap.set("n", "<A-k>", "mz:m-2<CR>`z==")
vim.keymap.set("n", "<A-j>", "mz:m+<CR>`z==")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("i", "<A-k>", "<Esc>:m-2<CR>==gi")
vim.keymap.set("i", "<A-j>", "<Esc>:m+<CR>==gi")

-- extra save, just to be save, ba dum tssss
vim.keymap.set("n", "<C-s>", "<cmd>w!<CR>")

