return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Themes
  use "folke/tokyonight.nvim"
  use "andersevenrud/nordic.nvim"
  use "shaunsingh/nord.nvim"
  use "lourenci/github-colors"
  use "dracula/vim"
  use "projekt0n/github-nvim-theme"
  use "rmehri01/onenord.nvim"
  use "kaiuri/github-vscode-theme.nvim"

  -- nvim-tree
  use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icons
  },
}

  -- bufferline
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

  -- mini.nvim and required
  use { 'echasnovski/mini.nvim', branch = 'stable' }
  use "lewis6991/gitsigns.nvim"

  --lsp-installer
  use 'williamboman/nvim-lsp-installer'

  -- lsp-saga
  use 'glepnir/lspsaga.nvim'
 
  -- nvim-treesitter
      use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    -- use {
    --     'nvim-treesitter/nvim-treesitter',
        -- run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    -- }
  
 use {
   'nvim-telescope/telescope.nvim',
   requires = {
     {'nvim-lua/plenary.nvim'},
     {'nvim-lua/popup.nvim'},
     {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
     {'nvim-telescope/telescope-symbols.nvim'},
   }
 }
  

-- Test

use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
}

-- Test


end)
