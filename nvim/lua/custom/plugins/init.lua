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
    'epwalsh/obsidian.nvim',
    version = '*', -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = 'markdown',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    opts = {
      workspaces = {
        {
          name = 'notes',
          path = '~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Notes/',
        },
      },
    },
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
