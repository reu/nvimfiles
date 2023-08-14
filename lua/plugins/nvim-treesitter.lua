require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "bash",
    "c",
    "cpp",
    "css",
    "dart",
    "dockerfile",
    "go",
    "graphql",
    "html",
    "java",
    "javascript",
    "json",
    "kotlin",
    "lua",
    "nix",
    "python",
    "regex",
    "ruby",
    "rust",
    "scss",
    "toml",
    "tsx",
    "typescript",
    "wgsl",
    "yaml",
  },
  highlight = {
    enable = true,
  },
  indent = {
    enable = false,
  },
  autotag = {
    enable = true,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn", -- set to `false` to disable one of the mappings
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
})
