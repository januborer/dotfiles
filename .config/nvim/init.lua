-- [[ init.lua ]]
--
-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = ","
vim.g.localleader = "\\"
-- IMPORTS
require("config.lazy")
 -- Options
require("config.options")
-- Variables
require("config.variables")
-- Keymaps
require("config.keymaps")
-- Autocomds
require('config.autocmds')
vim.lsp.enable('rust_analyzer')
