local g = vim.g
local o = vim.o

o.termguicolors = true

-- Better editor UI
o.number = true
o.numberwidth = 5
o.relativenumber = true
o.signcolumn = 'yes:2'
o.cursorline = true

-- Clipboard
o.clipboard = 'unnamedplus'

-- Smooth scrolling
o.smoothscroll = true

-- Map <leader> to space
g.mapleader = ' '
g.maplocalleader = ' '
