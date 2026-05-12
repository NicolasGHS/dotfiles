return {
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    opts = {},
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
  },

  {
    'maxmx03/solarized.nvim',
    lazy = false,
    priority = 1000,
    ---@type solarized.config
    opts = {},
    config = function(_, opts)
      vim.o.termguicolors = true
      vim.o.background = 'dark'
      require('solarized').setup(opts)
    end,
  },

  {
    'craftzdog/solarized-osaka.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
  },

  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
  },

  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
  },

  {
    'dgox16/oldworld.nvim',
    lazy = false,
    priority = 1000,
  },

  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      -- vim.cmd 'colorscheme rose-pine'
    end,
  },

  {
    'rebelot/kanagawa.nvim',
    name = 'kanagawa',
    config = function()
      -- vim.cmd 'colorscheme kanagawa-dragon'
    end,
  },

  {
    'catppuccin/nvim',
    name = 'catppuccin',
    config = function()
      -- vim.cmd 'colorscheme catppuccin-mocha'
    end,
  },

  {
    'sainnhe/everforest',
    name = 'everforest',
    config = function()
      -- vim.cmd 'colorscheme everforest'
    end,
  },

  {
    'vague-theme/vague.nvim',
    name = 'vague',
    config = function()
      vim.cmd 'colorscheme vague'
    end,
  },

  {
    'shaunsingh/nord.nvim',
    name = 'nord',
  },
}
