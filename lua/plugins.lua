vim.cmd [[packadd packer.nvim]]

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use 'drewtempelmeyer/palenight.vim'

  use 'kyazdani42/nvim-tree.lua'

  use 'neovim/nvim-lspconfig'
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',
      'ray-x/cmp-treesitter',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      { 'Saecki/crates.nvim', requires = { 'nvim-lua/plenary.nvim' } },
    }
  }
  use { 'jose-elias-alvarez/null-ls.nvim', requires = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' } }

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'tpope/vim-fugitive'

  use 'editorconfig/editorconfig-vim'
end)
