-- called with no other arguments (i.e.: command was just `nvim`)
-- go right into find-files
vim.api.nvim_create_autocmd('VimEnter', {
  callback = function()
    require('lualine').setup()
    vim.cmd('COQnow')

    if vim.fn.argv(0) == '' then
      require('telescope.builtin').find_files()
    end
  end,
})

vim.api.nvim_exec(
  [[
    if exists(":AnyFoldActivate") | autocmd Filetype * AnyFoldActivate | endif
  ]],
  false
)
