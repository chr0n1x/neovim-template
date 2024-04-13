local nmap = vim.api.nvim_set_keymap

vim.g.mapleader = ' '

-- Note that some of these require plugins

-- buffer navigation
-- highlight the word underneath your cursor and all instances of it
nmap('n', '<leader>s',       ':/<C-r><C-w>/<CR>',                       {noremap = true})

-- directory/tree navigation

-- show dir tree
-- can be used with <leader>m (mouse mode) or you can navigate around with hjkl
-- 'o' will open dirs
-- 'O' opens dir recursively
nmap('n', '<leader><tab>',   ':NERDTreeToggle<CR>',                     {noremap = true})

-- Telescope.nvim fuzzy finders - start typing and GOOOOOO
-- hitting <enter> selects a file and opens it
-- <esc><esc> closes the panel
-- <Ctrl>v -- opens the panel in a split pane veritically
-- <Ctrl>x -- opens horizontally
-- <Ctrl> + movement-key (h,j,k,l) -- will move your cursor into a different panel
nmap('n', '<leader>p',       ':Telescope find_files<CR>',               {noremap = true}) -- fuzzy-find files by path/name
nmap('n', '<leader>g',       ':Telescope live_grep<CR>',                {noremap = true}) -- live-grep files; requires ripgrep (see readme)

-- tab navigation (not panes like above)
-- use this along with tabs to fit more on the screen
nmap('n', '<leader>n',       ':tabnext<CR>',                            {noremap = true}) -- go to next tab
nmap('n', '<leader>b',       ':tabprevious<CR>',                        {noremap = true}) -- go to previous tab
nmap('n', '<leader>o',       ':tabe<space>',                            {noremap = true}) -- open new tab

-- misc
nmap('n', '<leader><space>', ':noh <bar> e<CR>',                        {noremap = true}) -- remove text highlights
nmap('n', '<leader>w',       ':w<CR>',                                  {noremap = true}) -- save current buffer/file
nmap('n', '<leader>q',       ':q<CR>',                                  {noremap = true}) -- quit/close current buffer/file
nmap('n', '<leader>m',       ':set mouse=a<CR>',                        {noremap = true}) -- turn ON mouse mode
nmap('n', '<leader>M',       ':set mouse=c<CR>',                        {noremap = true}) -- turn OFF mouse mode
