
local nmap = vim.api.nvim_set_keymap

vim.g.mapleader = ' '

-- these are put here because most of these I consider core functionality
-- that's ingrained in my muscle memory. There may be more key mappings in the
-- plugins/ dir tied to specific plugins. in nvim itself, hit <Space> and do
-- nothing to let the which-key plugin list possible keymappings

-- buffer navigation
nmap('n', '<leader>s', ':/<C-r><C-w>/<CR>', {noremap = true, desc = 'Search word underneath cursor.' })

-- tab navigation
nmap('n', '<leader>n', ':tabnext<CR>',     {noremap = true, desc = 'Tab; next' })
nmap('n', '<leader>b', ':tabprevious<CR>', {noremap = true, desc = 'Tab; prev' })
nmap('n', '<leader>o', ':tabe<space>',     {noremap = true, desc = 'Tab; open' })

-- editor visuals & "ergonomics"
nmap('n', '<leader>M', ':set mouse!<CR>', {noremap = true, desc = 'Toggle mouse mode.' })

-- misc 
nmap('n', '<leader>w',       ':w<CR>',                   {noremap = true, desc = 'Save buff. Or manage sessions.'})
nmap('n', '<leader><space>', ':noh <bar> e<CR>',         {noremap = true, desc = 'Close any highlights.'})
nmap('n', '<leader>q',       ':q<CR>',                   {noremap = true, desc = 'Close buffer (:q).'})
nmap('n', '<leader>md',      ':delm! | delm A-Z0-9<CR>', {noremap = true, desc = 'Marks: Delete all.'})
nmap('n', 'er',              ':',                        {noremap = true, desc = 'Quick-enter into command mode.'})

-- utility scripts
-- pretty-format JSON in the current buffer/file
nmap('n', '<leader>J', ':%!python3 -m json.tool --sort-keys<CR>', {noremap = true, desc = 'Use python to pretty-format JSON' })
