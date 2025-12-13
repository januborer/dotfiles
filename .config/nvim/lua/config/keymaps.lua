-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
--his function takes in four parameters: mode: the mode you want the key bind to apply to (e.g., insert mode, normal mode, command mode, visual mode). sequence: the sequence of keys to press. command: the command you want the keypresses to execute. options: an optional Lua table of options to configure (e.g., silent or noremap).
-- insert
map("i", "[", "[]<esc>i", { noremap = true, silent = true })
map("i", "{", "{}<esc>i", { noremap = true, silent = true })
map("i", "{<cr>", "{<cr>}<esc>O", { noremap = true, silent = true })
map("i", "(", "()<esc>i", { noremap = true, silent = true })
map("i", '"', '""<esc>i', { noremap = true, silent = true })
map("i", "''", "''<esc>i", { noremap = true, silent = true })
map("i", "<leader>w", "<ESC>:wa<CR>a", { noremap = true, silent = true })
map("i", "<C-f>", "<RIGHT>", { noremap = true, silent = true })
map("i", "<C-b>", "<LEFT>", { noremap = true, silent = true })
map("i", "<C-u>", "<ESC>$v^di", { noremap = true, silent = true })
map("i", "<C-e>", "<ESC>$a", { noremap = true, silent = true })
map("i", "<C-l>", "<ESC>gg0vG$di", { noremap = true, silent = true })
map("i", "<C-k>", "<RIGHT><ESC>d$a", { noremap = true, silent = true })
map("i", "<C-w>", "<ESC>vbxa", { noremap = true, silent = true })
map("i", "<C-a>", "<ESC>^i", { noremap = true, silent = true })
map("i", "<C-d>d", "<ESC>^v$yo<C-r>0", { noremap = true, silent = true })

-- normal
map("n", "<leader>w", ":wa<CR>", { noremap = true, silent = true })
map("n", "<leader>W", ":wa sudo://%<CR>", { noremap = true, silent = true })
map("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
map("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
map("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
map("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })
map("n", "<leader>e", ":e<CR>", { noremap = true, silent = true })
map("n", "<Tab>", ":bn<CR>", { noremap = true, silent = true })
map("n", "<s-Tab>", ":bp<CR>", { noremap = true, silent = true })
map("n", "<C-w>s", "<C-w>s<C-w>w", { noremap = true, silent = true })
map("n", "<C-w>v", "<C-w>v<C-w>w", { noremap = true, silent = true })

-- -- Moving around
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

-- -- Text wrapping and unwrapping
vim.keymap.set("n", "<leader>tw", "<cmd>set wrap!<cr>", { noremap = true, silent = true })

-- -- Close the current window
vim.keymap.set("n", "<leader>cw", "<cmd>close<cr>", { noremap = true, silent = true })

-- -- Delete the current buffer
vim.keymap.set("n", "<leader>q", "<cmd>bd!<cr>", { noremap = true, silent = true })

-- -- Toggle highlighting
vim.keymap.set("n", "<leader>hs", "<cmd>nohlsearch<cr>", { noremap = true, silent = true })

-- -- Switch between buffers
vim.keymap.set("n", "[b", "<cmd>bp<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "]b", "<cmd>bn<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "[B", "<cmd>bfirst<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "]B", "<cmd>blast<cr>", { noremap = true, silent = true })

-- -- cd to the directory of the current buffer
vim.keymap.set("n", "<leader>cd", "<cmd>lcd %:p:h<cr><cmd>pwd<cr>", { noremap = true, silent = true })

-- -- Open a buffer for scribble notes
vim.keymap.set("n", "<leader>z", "<cmd>e ~/buffer<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>x", "<cmd>e ~/buffer.md<cr>", { noremap = true, silent = true })
