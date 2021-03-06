vim.cmd([[packadd packer.nvim]])

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require("packer").startup(function()
  use("wbthomason/packer.nvim")

  use("drewtempelmeyer/palenight.vim")
  use({
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup()
    end,
  })

  use("kyazdani42/nvim-tree.lua")

  use({
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup({
        options = {
          icons_enabled = false,
        },
        extensions = { "nvim-tree" },
      })
    end,
  })

  use({
    "ThePrimeagen/refactoring.nvim",
    requires = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-treesitter/nvim-treesitter" },
    },
  })

  use("neovim/nvim-lspconfig")
  use("nvim-lua/lsp_extensions.nvim")
  use({
    "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lua",
      "ray-x/cmp-treesitter",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      { "Saecki/crates.nvim", requires = { "nvim-lua/plenary.nvim" } },
    },
  })
  use({
    "jose-elias-alvarez/null-ls.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
      "neovim/nvim-lspconfig",
      "ThePrimeagen/refactoring.nvim",
      "lewis6991/gitsigns.nvim",
    },
  })

  use("sheerun/vim-polyglot")
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  use({
    "romgrk/nvim-treesitter-context",
    requires = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("treesitter-context").setup()
    end,
  })
  use({ "windwp/nvim-ts-autotag", requires = { "nvim-treesitter/nvim-treesitter" } })

  use({
    "steelsojka/pears.nvim",
    config = function()
      require("pears").setup()
    end,
  })

  use({
    "nvim-telescope/telescope.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  })

  use("tpope/vim-fugitive")
  use({
    "lewis6991/gitsigns.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      require("gitsigns").setup()
    end,
  })

  use("editorconfig/editorconfig-vim")

  use({
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  })
end)
