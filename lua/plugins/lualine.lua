local spinner = { '⠋', '⠙', '⠹', '⠸', '⠼', '⠴', '⠦', '⠧', '⠇', '⠏' }
local sections = {
  lualine_a = {'mode'},
  lualine_b = {'branch'},

  lualine_x = {'filename'},
  lualine_y = {
    'encoding',
    'fileformat',
    'filetype',
    {
      'lsp_status',
      icon = '', -- f013
      symbols = {
        -- Standard unicode symbols to cycle through for LSP progress:
        spinner = spinner,
        -- Standard unicode symbol for when LSP is done:
        done = '✓',
        -- Delimiter inserted between LSP names:
        separator = ' ',
      },
      -- List of LSP names to ignore (e.g., `null-ls`):
      ignore_lsp = {},
    }
  },
  lualine_z = {'location'}
}

return {
  'hoob3rt/lualine.nvim',
  lazy = false,
  priority = 1000,
  dependencies =  { 'nvim-web-devicons' },
  opts = {
    options = {
      icons_enabled = true,
      theme = 'iceberg_dark',
      component_separators = {'|', '|'},
    },
    sections = sections,
    inactive_sections = {
      lualine_c = {'filename'},
      lualine_x = {'location'},
    }
  }
}
