vim.g.mapleader = " "

local keymap = vim.keymap

---- Base vim keybinds
-- Middle page 
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "<C-d>", "<C-d>zz")
-- Escape key fix
keymap.set("i", "<C-c>", "<Esc>")
---- Plugin Keybinds
-- File explorer
keymap.set("n", "<leader>et", ":NvimTreeToggle <CR>")
keymap.set("n", "<leader>eo", ":NvimTreeOpen <CR>")
keymap.set("n", "<leader>ec", ":NvimTreeClose <CR>")
keymap.set("n", "<leader>er", ":NvimTreeRefresh <CR>")
-- Telescope
local builtin = require('telescope.builtin')
keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>fg', builtin.live_grep, {})
keymap.set('n', '<leader>fb', builtin.buffers, {})
keymap.set('n', '<leader>fh', builtin.help_tags, {})
