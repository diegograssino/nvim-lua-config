return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- nvim-tree
  use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icons
  },
}
  -- Themes
  use "EdenEast/nightfox.nvim"
  use "folke/tokyonight.nvim"
end)
