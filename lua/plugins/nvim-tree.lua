vim.g.nvim_tree_auto_ignore_ft = { "startify" }
vim.g.nvim_tree_quit_on_open = 0
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_allow_resize = 1
vim.g.nvim_tree_highlight_opened_files = 1
vim.g.nvim_tree_disable_window_picker = 1

vim.g.nvim_tree_show_icons = {
  git = 0,
  folders = 0,
  folder_arrows = 1,
  files = 0,
}

require("nvim-tree").setup({
  auto_close = false,
  diagnostics = {
    enable = true,
  },
  hijack_cursor = true,
})
