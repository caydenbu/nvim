return { -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs',
  opts = {
    ensure_installed = {
      'lua',
      'javascript',
      'typescript',
      'json',
      'java',
      'gitignore',
      'make',
      'cmake',
      'bash',
      'css',
      'html',
      'c',
      'cpp',
    },
    auto_install = true,
    highlight = {
      enable = true,
    },
    indent = { enable = true },
  },
}
