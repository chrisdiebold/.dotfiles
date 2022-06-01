require'nvim-treesitter.configs'.setup {
  ensure_installed = {
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
  }
}
--[[ Tree sitter based folding
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
]]--

