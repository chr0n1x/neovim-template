local nmap = vim.api.nvim_set_keymap

vim.g.mapleader = ' '

-- Note that some of these require plugins

-- buffer navigation
nmap('n', '<leader>s',       ':/<C-r><C-w>/<CR>',                       {noremap = true}) -- highlight the word underneath your cursor

-- directory/tree navigation
nmap('n', '<leader><tab>',   ':NERDTreeToggle<CR>',                     {noremap = true}) -- show dir tree
nmap('n', '<leader>p',       ':Telescope find_files<CR>',               {noremap = true}) -- fuzzy-find files by path/name
nmap('n', '<leader>g',       ':Telescope live_grep<CR>',                {noremap = true}) -- live-grep files

-- tab navigation
-- Remember: Ctrl + movement-key (h,j,k,l) -- will move your cursor into a different panel
-- use this along with tabs to fit more on the screen
nmap('n', '<leader>n',       ':tabnext<CR>',                            {noremap = true}) -- go to next tab
nmap('n', '<leader>b',       ':tabprevious<CR>',                        {noremap = true}) -- go to previous tab
nmap('n', '<leader>o',       ':tabe<space>',                            {noremap = true}) -- open new tab

-- misc
nmap('n', '<leader><space>', ':noh <bar> e<CR>',                        {noremap = true}) -- remove text highlights
nmap('n', '<leader>G',       ':GitGutterLineHighlightsToggle<CR>',      {noremap = true}) -- toggle git diff line highlights
nmap('n', '<leader>w',       ':w<CR>',                                  {noremap = true}) -- save current buffer/file
nmap('n', '<leader>q',       ':q<CR>',                                  {noremap = true}) -- quit/close current buffer/file
nmap('n', '<leader>m',       ':set mouse=a<CR>',                        {noremap = true}) -- turn ON mouse mode
nmap('n', '<leader>M',       ':set mouse=c<CR>',                        {noremap = true}) -- turn OFF mouse mode
