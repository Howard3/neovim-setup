-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'nvim-lua/plenary.nvim'

  -- search the open directory
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- quick file re-retrieval
  use {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { {"nvim-lua/plenary.nvim"} }
  }

  -- awesome undo functionality
  use("mbbill/undotree")

  -- register browser
  use {
      "AckslD/nvim-neoclip.lua",
      requires = {
          {'nvim-telescope/telescope.nvim'},
      },
  }
  -- git
  use("tpope/vim-fugitive")
  use("sindrets/diffview.nvim")
  use {
      'lewis6991/gitsigns.nvim',
      config = function()
          require('gitsigns').setup()
      end
  }
  use("tpope/vim-rhubarb") -- github integration for :GBrowse

  -- setup the lsp
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  use("nvim-tree/nvim-web-devicons")
  use("github/copilot.vim")

  -- status line
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- noob and old man aid
  use {
      "folke/which-key.nvim",
      config = function()
          vim.o.timeout = true
          vim.o.timeoutlen = 300
          require("which-key").setup {
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  }
  -- find the errors in your code
  use {
      'folke/trouble.nvim',
      requires = {'nvim-tree/nvim-web-devicons'}
  }

  -- highlight the signature of the function you're in
  use {
   "ray-x/lsp_signature.nvim",
  }

  -- debugging
  -- used by go.nvim
  use 'mfussenegger/nvim-dap'
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  use 'theHamsta/nvim-dap-virtual-text'
  use 'nvim-telescope/telescope-dap.nvim'
  use 'ChristianChiarulli/neovim-codicons' -- recommended by nvim-dap-ui

  -- go
  use('ray-x/go.nvim')
  use('ray-x/guihua.lua')
  use {
      'crusj/structrue-go.nvim',
      branch = "main"
  }

  -- csv
  use {
      'cameron-wags/rainbow_csv.nvim',
      config = function()
          require 'rainbow_csv'.setup()
      end,
      -- optional lazy-loading below
      module = {
          'rainbow_csv',
          'rainbow_csv.fns'
      },
      ft = {
          'csv',
          'tsv',
          'csv_semicolon',
          'csv_whitespace',
          'csv_pipe',
          'rfc_csv',
          'rfc_semicolon'
      }
  }

  -- rest
  use "rest-nvim/rest.nvim"

  -- indent guides
  use "lukas-reineke/indent-blankline.nvim"


  -- preview the code you're about to jump to
  use {
      'rmagatti/goto-preview',
      config = function()
          require('goto-preview').setup {}
      end
  }

  -- refactoring
  use {
      'ThePrimeagen/refactoring.nvim',
      requires = {
          {'nvim-lua/plenary.nvim'},
          {'nvim-treesitter/nvim-treesitter'}
      }
  }

  -- comments
  use 'folke/todo-comments.nvim'

  -- styling etc
  -- colorscheme
  use 'bluz71/vim-nightfly-guicolors'
  use 'scottmckendry/cyberdream.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }

  -- better syntax highlighting
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')

  use 'koenverburg/peepsight.nvim'

  -- folding
  use 'anuvyklack/pretty-fold.nvim'

  -- These optional plugins should be loaded directly because of a bug in Packer lazy loading
  use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
  use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
  use 'romgrk/barbar.nvim'
end)




