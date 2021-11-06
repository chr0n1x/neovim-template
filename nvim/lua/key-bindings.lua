local nmap = vim.api.nvim_set_keymap

vim.g.mapleader = ' '

-- Note that some of these require plugins

-- buffer navigation
nmap('n', '<leader>s',       ':/<C-r><C-w>/<CR>',                       {noremap = true})

-- directory/tree navigation
nmap('n', '<leader>p',       ':CtrlP<CR>',                              {noremap = true})
nmap('n', '<leader><tab>',   ':NERDTreeToggle<CR>',                     {noremap = true})
nmap('n', '<leader>ff',      ':Telescope find_files<CR>',               {noremap = true})
nmap('n', '<leader>fg',      ':Telescope live_grep<CR>',                {noremap = true})

-- tab navigation
nmap('n', '<leader>n',       ':tabnext<CR>',                            {noremap = true})
nmap('n', '<leader>b',       ':tabprevious<CR>',                        {noremap = true})
nmap('n', '<leader>o',       ':tabe<space>',                            {noremap = true})

-- misc
nmap('n', '<leader><space>', ':noh <bar> e<CR>',                        {noremap = true})
nmap('n', '<leader>G',       ':GitGutterLineHighlightsToggle<CR>',      {noremap = true})
nmap('n', '<leader>w',       ':w<CR>',                                  {noremap = true})
nmap('n', '<leader>q',       ':q<CR>',                                  {noremap = true})
nmap('n', '<leader>j',       ':%!python3 -m json.tool --sort-keys<CR>', {noremap = true})
nmap('n', '<leader>m',       ':set mouse=a<CR>',                        {noremap = true})
nmap('n', '<leader>M',       ':set mouse=c<CR>',                        {noremap = true})
