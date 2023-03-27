vim.g.mapleader = " "


-- TODO:
--  - Better code completion
--  - ultisnips
--  - investigate on code lens
--  - underline errors
--  - Better legendary search
--  - Investigate on lazygit
--  - treesitter motions
--  - better comments
--  - JSDoc generation
--  - reconfigure completion / codeium
--  - investigate on ALE
--  - improve Leap AST
--  - project find replace: https://github.com/nvim-pack/nvim-spectre
--  - https://github.com/rmagatti/goto-preview
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

vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]
