local M = {}

local colors = {
  bg = '',
  fg = '#FCFCFC',
  red = '#F7567C',
  green = '#99E1D9',
  yellow = '#FFFAE3',
  blue = '',
  magenta = '',
  cyan = '',
  gray = '#5D576B',
}

function M.colorscheme()
  vim.cmd 'highlight clear'
  vim.cmd 'syntax reset'
  vim.o.background = 'dark'
  vim.g.colors_name = 'meltyn'
end
