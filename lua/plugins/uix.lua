return {
  {
    'rcarriga/nvim-notify',
    priority = 1001,
    lazy = false,
    config = function ()
      vim.notify = require("notify")
    end,
    keys = {
      { '<leader>e', ':lua require("notify").dismiss()<CR>', desc = "Clear notifications." },
      { '<leader>ec', ':lua require("notify").dismiss()<CR>', desc = "Clear notifications." },
      { '<leader>eh', ':Telescope notify<CR>', desc = "View notifications in Telescope." },
    }
  },

  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      dashboard = { enabled = true, },
      indent = { enabled = true },
      scope = { enabled = true },
      statuscolumn = { enabled = true },
      layout = { enabled = true },
      win = { enabled = true },
    }
  },

  {
    'mikesmithgh/borderline.nvim',
    enabled = true,
    lazy = true,
    event = 'VeryLazy',
    config = function() require('borderline').setup({}) end,
  },

  {
    'tris203/precognition.nvim',
    opts = {
      startVisible = false,
      showBlankVirtLine = false,
      highlightColor = { link = "LineNr" },
      gutterHints = {
        G = { text = "G", prio = 10 },
        gg = { text = "gg", prio = 9 },
        PrevParagraph = { text = "{", prio = 8 },
        NextParagraph = { text = "}", prio = 8 },
      },
    },
    keys = {
      {'<leader>P', ':lua require("precognition").toggle()<CR>', desc = 'toggle precognition'},
    }
  },

  -- {
  --   "m4xshen/hardtime.nvim",
  --   dependencies = { "MunifTanjim/nui.nvim" },
  --   config = function ()
  --     -- Im too weenie hut juniors for this
  --     require("hardtime").setup({ restriction_mode = "hint" })
  --   end
  -- },

  {
    'shaunsingh/nord.nvim',
    lazy = false,
    init = function() require('nord').set() end
  },

  { "sphamba/smear-cursor.nvim", opts = {} },

  {
    "anuvyklack/windows.nvim",
    lazy = false,
    dependencies = {
      "anuvyklack/middleclass",
      "anuvyklack/animation.nvim"
    },
    init = function()
      vim.o.winwidth = 10
      vim.o.winminwidth = 10
      vim.o.equalalways = false
      require('windows').setup()
    end
  },
}
