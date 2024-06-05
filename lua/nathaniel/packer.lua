-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Color theme 
  use 'folke/tokyonight.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }

  -- Goyo
  use { 'junegunn/goyo.vim', requires = { 'junegunn/limelight.vim' } }

  -- Fuzzy finder
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.5',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Highlighting and stuff
  use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})

  -- File navigator, made by the harpoon man itself
  use('theprimeagen/harpoon')

  -- undo
  use('mbbill/undotree')

  -- vim float
  use 'voldikss/vim-floaterm'


  -- LSP 
  use {
      'VonHeikemen/lsp-zero.nvim',
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
          {'quangnguyen30192/cmp-nvim-ultisnips'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'hrsh7th/cmp-nvim-lua'},

          -- Snippets
          {'SirVer/ultisnips'},
          {'L3MON4D3/LuaSnip'},
          {'rafamadriz/friendly-snippets'},
      }
  }

end)
