vim.g.mapleader = " "


-- TODO:
--  - git difftool: installed diffview
--  - barbar: display git modified files
--  - Better code completion
--  - ultisnips
--  - Fold blocks
--  - investigate on code lens
--  - underline errors/Users/julessang/.local/state/nvim/lsp.log
--
--
-- TOTEST:
--  - lazy.nvim
--
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
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
require('lazy').setup('plugins')


require('config')
require('remap')
require('set')


