local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require("packer").startup(function()
  use("wbthomason/packer.nvim")

  use({
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
      })
    end,
  })
  use("drewtempelmeyer/palenight.vim")
  use({
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup()
    end,
  })
  use("gcmt/wildfire.vim")

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

  use({
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup()
    end,
  })

  use("sheerun/vim-polyglot")
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  use({ "SmiteshP/nvim-gps", requires = { "nvim-treesitter/nvim-treesitter" } })
  use({ "windwp/nvim-ts-autotag", requires = { "nvim-treesitter/nvim-treesitter" } })

  use({
    "nvim-telescope/telescope.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({ defaults = { file_ignore_patterns = { "sorbet/" } } })
    end,
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

  if packer_bootstrap then
    require("packer").sync()
  end
end)
