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
  -- mini.nvim and required
  use { 'echasnovski/mini.nvim', branch = 'stable' }
  use "lewis6991/gitsigns.nvim"

  -- lsp-config
  use 'neovim/nvim-lspconfig'
  
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
  
  -- nvim-ts-rainbow
  use 'p00f/nvim-ts-rainbow'

  -- telescope
  -- use {
  -- 'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
  -- requires = { {'nvim-lua/plenary.nvim'} }
  -- }  
  -- telescope-fzf-native
  -- use {'nvim-telescope/telescope-fzf-native.nvim', run='cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
 use {
   'nvim-telescope/telescope.nvim',
   requires = {
     {'nvim-lua/plenary.nvim'},
     {'nvim-lua/popup.nvim'},
     {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
     {'nvim-telescope/telescope-symbols.nvim'},
   }
 }
  
  -- Themes
  -- use "EdenEast/nightfox.nvim"
  use "folke/tokyonight.nvim"
  -- use "Abstract-IDE/Abstract-cs"
  -- use "tomasiser/vim-code-dark"
  -- use "Mofiqul/vscode.nvim"
  -- use "marko-cerovac/material.nvim"
  -- use "bluz71/vim-nightfly-guicolors"
  -- use "bluz71/vim-moonfly-colors"
  -- use "ChristianChiarulli/nvcode-color-schemes.vim"
  -- use "sainnhe/sonokai"
  -- use "kyazdani42/blue-moon"
  -- use "mhartington/oceanic-next"
  -- use "glepnir/zephyr-nvim"
  -- use "rockerBOO/boo-colorscheme-nvim"
  -- use "RishabhRD/nvim-rdark"
  -- use "ishan9299/modus-theme-vim"
  -- use "sainnhe/edge"
  -- use "theniceboy/nvim-deus"
  -- use "bkegley/gloombuddy"
  -- use "Th3Whit3Wolf/one-nvim"
  -- use "PHSix/nvim-hybrid"
  -- use "Th3Whit3Wolf/space-nvim"
  -- use "yonlu/omni.vim"
  -- use "ray-x/aurora"
  -- use "tanvirtin/monokai.nvim"
  -- use "savq/melange"
  -- use "fenetikm/falcon"
  use "andersevenrud/nordic.nvim"
  use "shaunsingh/nord.nvim"
  -- use "ishan9299/nvim-solarized-lua"
  -- use "shaunsingh/moonlight.nvim"
  -- use "navarasu/onedark.nvim"
  use "lourenci/github-colors"
  use "dracula/vim"
  -- use "sainnhe/everforest"
  -- use "yashguptaz/calvera-dark.nvim"
  -- use "adisen99/codeschool.nvim"
  use "projekt0n/github-nvim-theme"
  -- use "ldelossa/vimdark"
  use "rmehri01/onenord.nvim"
  -- use "luisiacc/gruvbox-baby"
  -- use "yazeed1s/minimal.nvim"
  use "kaiuri/github-vscode-theme.nvim"
end)
