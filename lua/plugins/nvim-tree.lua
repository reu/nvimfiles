vim.g.nvim_tree_auto_ignore_ft = { "startify" }

require("nvim-tree").setup({
  diagnostics = {
    enable = true,
  },
  actions = {
    open_file = {
      quit_on_open = false,
      resize_window = true,
      window_picker = {
        enable = false,
      },
    },
  },
  renderer = {
    highlight_git = true,
    highlight_opened_files = "name",
    icons = {
      show = {
        file = false,
        folder = false,
        folder_arrow = true,
        git = false,
      },
    },
    indent_markers = {
      enable = true
    },
  },
  hijack_cursor = true,
})
