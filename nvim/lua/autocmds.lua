vim.api.nvim_exec(
  [[
    if exists(":AnyFoldActivate") | autocmd Filetype * AnyFoldActivate | endif
  ]],
  false
)
