lua require('plugins')

source ~/.config/nvim/config.vim

colorscheme catppuccin

lua require('plugins.nvim-tree')
lua require('plugins.nvim-treesitter')
lua require('plugins.nvim-lspconfig')
lua require('plugins.nvim-cmp')

source ~/.config/nvim/keys.vim
