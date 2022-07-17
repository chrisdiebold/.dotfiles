require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    'bash',
    'comment',
    'c', 'cpp',
    'css',
    'dockerfile',
    'elixir',
    'go',
    'graphql',
    'html',
    'java',
    'javascript',
    'jsdoc',
    'json',
    'latex',
    'lua',
    'markdown',
    'rust',
    'scss',
    'svelte',
    'toml',
    'tsx',
    'typescript',
    'yaml',
    'zig'
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,

  },
  autotag = {
    enable = true
  },
  auto_install = true,
}
