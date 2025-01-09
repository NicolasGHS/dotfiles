local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

-- Reloads Neovim after whenever you save plugins.lua
vim.cmd([[ augroup packer_user_config
      autocmd!
     autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup END
]])

packer.startup(function(use)
    use("wbthomason/packer.nvim")					-- Packer
    use {
    	'vimwiki/vimwiki', 						-- Vimwiki
    	config = function()
        	vim.g.vimwiki_list = {
            		{
			path = "~/vimwiki",
                	syntax = 'markdown',
                	ext = '.md',
            		}
        	}
    	end
    }						
    use {
    	"windwp/nvim-autopairs", 	  				-- Autopairs
    	event = "InsertEnter",
    	config = function()
        	require("nvim-autopairs").setup {}
    	end
    }
    use("tpope/vim-commentary")						-- Commentary
    use("scrooloose/nerdtree")						-- NerdTree
    use {
  	'nvim-lualine/lualine.nvim',					-- LuaLine
  	requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use {'neoclide/coc.nvim', branch = 'release'}			-- coc
    use {
  	'nvim-telescope/telescope.nvim', tag = '0.1.8',                 -- Telescope
	-- or                            , branch = '0.1.x',
  	requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
  	'nvimdev/dashboard-nvim',					-- Dashboard
  	event = 'VimEnter',
  	config = function()
    		require('dashboard').setup {
      		-- config
    		}
  	end,
  	requires = {'nvim-tree/nvim-web-devicons'}
    }
    use("ap/vim-css-color")						-- vim-css-color

    use { "catppuccin/nvim", as = "catppuccin" }			-- Catppuccin
    use {"akinsho/horizon.nvim", tag = "*"}				-- Horizon


end)

require("lualine").setup()



