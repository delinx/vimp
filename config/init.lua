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
vim.opt.rtp:append(nvim_dir .. "/data/runtime//")

-- Lets be LAZY
local lazypath = nvim_dir .. "/data/plugins/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup(require'./plugin', { lockfile = nvim_dir .. "/lazy-lock.json" })

-- Require the user module
require("user")

require("plugins")