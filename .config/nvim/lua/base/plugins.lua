-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]
-- Only if your version of Neovim doesn't have https://github.com/neovim/neovim/pull/12632 merged
-- vim._update_package_paths()

-- Auto install packer
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end


return require('packer').startup(function(use)
  -- Packer
  use 'wbthomason/packer.nvim'

  -- icons
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'


  -- gui
  -- nvim-colorizer.lua
  use {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('core.iv-colorizer')
    end
  }

  -- zen mode
  use {
    'folke/zen-mode.nvim',
    config = function()
      require('core.iv-zenmode')
    end
  }

  use {
    'folke/twilight.nvim',
    config = function()
      require('core.iv-twilight')
    end
  }

  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

  -- nvim tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('core.iv-nvimtree')
    end
  }

  -- dashboard
  use {
    'glepnir/dashboard-nvim',
    requires = 'nvim-lua/telescope.nvim',
    event = 'BufWinEnter',
    config = function()
      require("core.iv-dashboard")
    end
  }

  -- tabline
  use {
    'akinsho/nvim-bufferline.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    event = 'BufWinEnter',
    config = function()
      require('core.iv-bufferline')
    end
  }

  -- toggleterm
  use {
      "akinsho/nvim-toggleterm.lua",
    config = function()
        require('core.iv-toggleterm')
    end
  }

  use {'preservim/tagbar'}

  -- linting and intellisense

  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run  = ':TSUpdate',
    config = function()
      require('core.iv-nvim-treesitter')
    end
  }

  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  use 'glepnir/lspsaga.nvim'

  use {
    'hrsh7th/nvim-compe',
    config = function()
      require('core.iv-compe')
    end
  }

  use {
    'neovim/nvim-lspconfig',
    config = function()
        require('core.iv-lspconfig')
    end
  }


  use {
      'kabouzeid/nvim-lspinstall',
      config = function()
          require('core.iv-lspinstall')
    end
  }

  use {'mboughaba/i3config.vim'}

  -- searching
  use {'kien/ctrlp.vim'}

  -- telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'}
    },
    config = function()
      require('core.iv-telescope')
    end
  }

 use {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
        require('core.iv-indent')
    end
   }

 use {
    'itchyny/vim-cursorword',
    event = {'BufReadPre','BufNewFile'},
    config = function()
        require('core.iv-cursorword')
    end
  }
 -- QOL
  use {'vimwiki/vimwiki'}

  use {
    'preservim/nerdcommenter',
    config = function()
        require('core.iv-nerdcommenter')
    end
  }

  use {
    'liuchengxu/vim-which-key',
    config = function()
        require('core.iv-whichkey')
    end
  }
  use {'tpope/vim-surround'}
  use {'terryma/vim-multiple-cursors'}

  use {
    'Raimondi/delimitMate',
    event = 'InsertEnter',
    config = function()
      require('core.iv-delimitmate')
    end
  }

  use 'dstein64/vim-startuptime'

  -- colorschemes
  use {'arcticicestudio/nord-vim'}

end)

--  automatically run :PackerCompile whenever plugins.lua is updated
-- vim.cmd([[autocmd BufWritePost plugins.lua source <afile> | PackerSync]])
