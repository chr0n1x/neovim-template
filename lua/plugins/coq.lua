vim.g.coq_settings = {
  auto_start = true,
  clients = {
    tabnine = { enabled = true }
  }
}

vim.api.nvim_command('COQnow --shut-up')
