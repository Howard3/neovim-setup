-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- search the open directory
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- colorscheme
  use 'shaunsingh/moonlight.nvim'

  -- better syntax highlighting
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')

  -- quick file re-retrieval
  use("theprimeagen/harpoon")

  -- awesome undo functionality
  use("mbbill/undotree")

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

  -- find the errors in your code
  use {
      'folke/trouble.nvim',
      requires = {'nvim-tree/nvim-web-devicons'}
  }

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
  use {
      "rest-nvim/rest.nvim",
      requires = { "nvim-lua/plenary.nvim" },
      config = function()
          require("rest-nvim").setup({
              -- Open request results in a horizontal split
              result_split_horizontal = false,
              -- Keep the http file buffer above|left when split horizontal|vertical
              result_split_in_place = false,
              -- Skip SSL verification, useful for unknown certificates
              skip_ssl_verification = false,
              -- Encode URL before making request
              encode_url = true,
              -- Highlight request on run
              highlight = {
                  enabled = true,
                  timeout = 150,
              },
              result = {
                  -- toggle showing URL, HTTP info, headers at top the of result window
                  show_url = true,
                  show_http_info = true,
                  show_headers = true,
                  -- executables or functions for formatting response body [optional]
                  -- set them to false if you want to disable them
                  formatters = {
                      json = "jq",
                      html = function(body)
                          return vim.fn.system({"tidy", "-i", "-q", "-"}, body)
                      end
                  },
              },
              -- Jump to request line on run
              jump_to_request = false,
              env_file = '.env',
              custom_dynamic_variables = {},
              yank_dry_run = true,
          })
      end
  }

  -- indent guides
  use "lukas-reineke/indent-blankline.nvim"

  -- folding
  use{ 'anuvyklack/pretty-fold.nvim',
  config = function()
      require('pretty-fold').setup()
  end}

  -- preview the code you're about to jump to
  use {
      'rmagatti/goto-preview',
      config = function()
          require('goto-preview').setup {}
      end
  }
end)
