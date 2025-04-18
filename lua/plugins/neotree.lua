local nmap = vim.api.nvim_set_keymap

nmap('n', '<leader><S-tab>', ':Neotree toggle<CR>', {noremap = true, desc = 'Neotree toggle.' })
nmap('n', '<leader><tab>',   ':Neotree reveal<CR>', {noremap = true, desc = 'Neotree reveal file for buff.' })

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    -- TODO: figure out platform agnostic setup
    -- {"3rd/image.nvim", opts = {}},
  },
  lazy = false,
  opts = {
    enable_diagnostics = false,
    window = {
      -- I hate this thing with a passion
      mappings = {
        ['/'] = 'noop',
      }
    }
  },
}
