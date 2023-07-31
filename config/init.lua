vim.g["HOME"] = vim.g["VIM"]

-- Get the directory of the Neovim executable
local nvim_dir = vim.fn.fnamemodify(vim.v.progpath, ":h:h:h:h")

-- Add the "config" directory in the parent directory of the Neovim binary to package.path
package.path = nvim_dir .. "/config/?.lua;" .. nvim_dir .. "/config/?/init.lua;" .. package.path

vim.opt.undodir = nvim_dir .. "/data/undodir//"  
vim.opt.backupdir = nvim_dir .. "/data/backup//" 
vim.opt.directory = nvim_dir .. "/data/swap//"   
vim.opt.viewdir = nvim_dir .. "/data/view//"     
vim.opt.packpath:append(nvim_dir .. "/data/pack//")
vim.opt.rtp:append(nvim_dir .. "data/runtime//")

-- Require the user module
require("user")