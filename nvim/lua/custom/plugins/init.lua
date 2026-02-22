-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- lazy.nvim
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      'MunifTanjim/nui.nvim',
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      'rcarriga/nvim-notify',
    },
  },
  {
    'adibhanna/laravel.nvim',
    dependencies = {
      'MunifTanjim/nui.nvim',
      'nvim-lua/plenary.nvim',
    },
    keys = {
      { '<leader>la', ':Artisan<cr>', desc = 'Laravel Artisan' },
      { '<leader>lc', ':Composer<cr>', desc = 'Composer' },
      { '<leader>lr', ':LaravelRoute<cr>', desc = 'Laravel Routes' },
      { '<leader>lm', ':LaravelMake<cr>', desc = 'Laravel Make' },
    },
    config = function()
      require('laravel').setup()
    end,
  },
  {
    -- Obsidian
    'obsidian-nvim/obsidian.nvim',
    lazy = false,
    version = '*', -- use latest release, remove to use latest commit
    ft = 'markdown',
    ---@module 'obsidian'
    ---@type obsidian.config
    opts = {
      legacy_commands = false, -- this will be removed in the next major release
      workspaces = {
        {
          name = 'notes',
          path = '/Users/nicolas/Library/Mobile Documents/iCloud~md~obsidian/Documents/Notes',
        },
      },
    },
  },
  {
    {
      'nvim-neorg/neorg',
      lazy = false,
      version = '*',
      config = function()
        require('neorg').setup {
          load = {
            ['core.defaults'] = {},
            ['core.concealer'] = {},
            ['core.dirman'] = {
              config = {
                workspaces = {
                  notes = '~/Dropbox/notes',
                },
                default_workspace = 'notes',
              },
            },
          },
        }

        vim.wo.foldlevel = 99
        vim.wo.conceallevel = 2
      end,
    },
  },
  {
    'windwp/nvim-ts-autotag',
    lazy = false,
    priority = 1000,
    config = true,
    -- opts = {
    --   enable_close = true, -- Auto close tags
    --   enable_rename = true, -- Auto rename pairs of tags
    --   enable_close_on_slash = false, -- Auto close on trailing </
    -- },
  },

  {
    -- Solarized
    'maxmx03/solarized.nvim',
    lazy = false,
    priority = 1000,
    ---@type solarized.config
    opts = {},
    config = function(_, opts)
      vim.o.termguicolors = true
      vim.o.background = 'dark'
      require('solarized').setup(opts)
      -- vim.cmd.colorscheme 'solarized'
      -- vim.cmd 'colorscheme solarized'
    end,
  },

  -- Solarized Osaka
  {
    'craftzdog/solarized-osaka.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
  },
  -- Gruvbox-material
  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.cmd 'colorscheme gruvbox-material'
    end,
  },

  -- Nordic theme
  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.cmd 'colorscheme nordic'
    end,
  },
  -- Oldworld
  {
    'dgox16/oldworld.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.cmd 'colorscheme oldworld'
    end,
  },

  -- Rose-pine
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      vim.cmd 'colorscheme rose-pine'
    end,
  },
  {
    'shaunsingh/nord.nvim',
    name = 'nord',
    config = function()
      -- vim.cmd 'colorscheme nord'
    end,
  },
}
