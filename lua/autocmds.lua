-- called with no other arguments (i.e.: command was just `nvim`)
-- go right into find-files
vim.api.nvim_create_autocmd('VimEnter', {
  callback = function()
    vim.cmd [[au VimEnter * AnyFoldActivate]]
  end
})
