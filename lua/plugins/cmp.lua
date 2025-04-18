-- deps that don't destroy a machine with less resources
-- or are absolutely required
local deps = {
  'folke/snacks.nvim', -- lowkey UGH; for downstream notifications

  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
}

-- default sources that don't kill the machine when trying to load
local sources_list = {
  {name = 'path'},
  {
    name = 'buffer',
    keyword_length = 8,
    option = {
      get_bufnrs = function()
        return vim.api.nvim_list_bufs()
      end
    }
  },
}

-- TODO: not sure if there are other simpler ones to add by default
local snippet_configs = {}

if not IN_PERF_MODE then
  table.insert(deps, 'hrsh7th/cmp-nvim-lsp')
  table.insert(deps, 'hrsh7th/cmp-nvim-lua')
  table.insert(deps, 'L3MON4D3/LuaSnip')
  table.insert(deps, 'andersevenrud/cmp-tmux')

  table.insert(sources_list, {name = 'nvim_lsp' })
  table.insert(sources_list, {
    name = "lazydev",
    group_index = 0, -- set group index to 0 to skip loading LuaLS completions
  })
  table.insert(sources_list, {name = 'luasnip', keyword_length = 8})
  table.insert(
    sources_list,
    {
      name = 'tmux',
      keyword_length = 4,
      option = {
        all_panes = true,
        capture_history = true,
      }
    }
  )

  snippet_configs["expand"] = function(args)
    require('luasnip').lsp_expand(args.body)
  end
end

return {
  'hrsh7th/nvim-cmp',

  events = { "BuffRead" },
  lazy = false,

  dependencies = deps,

  config = function()
    local cmp = require('cmp')
    local cmp_select = {behavior = cmp.SelectBehavior.Select}
    local compare = require('cmp.config.compare')
    local compare_cfg = {
      compare.offset,
      compare.exact,
      compare.score,
      compare.recently_used,
      compare.kind,
      compare.sort_text,
      compare.length,
      compare.order,
    }

    cmp.setup({
      sources = sources_list,
      sorting = {
        priority_weight = 2,
        comparators = compare_cfg,
      },
      mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
      }),

      snippet = snippet_configs,
    })

    -- UI DECORATIONS
    -- Change the Diagnostic symbols in the sign column (gutter)
    -- (not in youtube nvim video)
    local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end
  end
}
