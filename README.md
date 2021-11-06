NeoVim Template
====

Don't know where to start with [NeoVim](https://neovim.io/)? Just want a quick-start template with bare-bones IDE functionality? Or just want to restart your Vim setup but with NeoVim?

Hopefully this makes your life easier!

This template provides a [packer.nvim](https://github.com/wbthomason/packer.nvim) setup with some bare-bones plugins and lua configurations, lightly organized so that it should be simple to see what's going on if you're new to NeoVim & Lua, but _just_ complex enough to showcase what's possible with the NeoVim LuaJIT runtime.

# Requirements

Make sure that you have:

1. `python` installed, with a working installation of `pip` (e.g.: `apt install python py-pip`)
2. NeoVim version `>= 0.5.1` (e.g.: `brew install neovim`)

MacOS users have it easy, you should just be able to use `brew` to install everything.

For other users, you may have to compile `neovim` from source (as of writing this, WSL installations only have access to neovim v0.4.x).

# Usage

1. Click the `Use template` button to the top right 👆
2. Clone down your new repo
3. `cd` into your repo. Run `make` - this will symlink all files in your `home` directory to this repository.

## Initial Startup

Some plugins in this setup do not allow for setup & go. Specifically, `packer.nvim` does not support headless installation of plugins as of writing this.

After `step 3` above you will have to open up `nvim` to allow things to install. Once you run `nvim` you will see this window:

```
               packer.nvim - finished in 2.007s                  │  1
 ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ │~
 ✓ Installed nvim-treesitter/nvim-treesitter                     │~
 ✓ Installed ms-jpq/coq_nvim/coq                                 │~
 ✓ Installed neovim/nvim-lspconfig                               │~
 ✓ Installed kabouzeid/nvim-lspinstall                           │~
 ✓ Installed ms-jpq/coq.artifacts/artifacts                      │~
 ✓ Installed airblade/vim-gitgutter                              │~
 ✓ Installed gregsexton/MatchTag                                 │~
 ✓ Installed jamestthompson3/nvim-remote-containers              │~
 ✓ Installed kien/ctrlp.vim                                      │~
 ✓ Installed pseewald/vim-anyfold                                │~
 ✓ Installed shaunsingh/nord.nvim                                │~
 ✓ Installed tpope/vim-fugitive                                  │~
 ✓ Installed tpope/vim-surround                                  │~
 ✓ Installed scrooloose/nerdtree                                 │~
 ✓ Installed Yggdroot/indentLine                                 │~
 ✓ Installed nvim-telescope/telescope.nvim                       │~
 ✓ Installed nvim-lua/plenary.nvim                               │~
 ✓ Installed kyazdani42/nvim-web-devicons                        │~
 ✓ Installed hoob3rt/lualine.nvim                                │~
                                                                 │~
 Press 'q' to quit                                               │~
 Press '<CR>' to show more info                                  │~
 Press 'd' to show the diff                                      │~
 Press 'r' to revert an update                                   │~
~                                                                │~
```

That will run Packer.nvim and install all of the plugins. `:qa` after that completes.

Now re-open `nvim`. You will see this error message coming from `coq_nvim`:

```
Please update dependencies using :COQdeps
-
-
Dependencies will be installed privately inside `/Users/....`
`rm -rf coq_nvim` will cleanly remove everything
Press ENTER or type command to continue
```

Hit `ESC` and then type in the commmand:

```
:COQdeps
```

That installs the python dependencies required for the auto-completion plugin, [`coq_vim`](https://github.com/ms-jpq/coq_nvim), to setup.

When it's all done you should see the following message:

```
...
Requirement already satisfied: pip in ./.vars/runtime/lib/python3.9/site-packages (21.2.4)
Collecting pip
...
...
...
    Running setup.py install for pynvim-pp: started
    Running setup.py install for pynvim-pp: finished with status 'done'
Successfully installed PyYAML-5.4.1 greenlet-1.1.2 ...
---
You can now use :COQnow
```

After all of that, everything should be set up! `:qa`, reopen and everything is ready for use.

**If anything goes wrong, you should be able to just run `make nuke` and start over.**

# Features / Plugins

For a full list of features pre-baked, checkout the [`_plugins` file](nvim/lua/_plugins.lua).

A few selling points though!

1. `Leader` is mapped to `<Space>` - so for the next couple of shortcuts, you hit `Spacebar` for `<Leader>`
1. `<Leader><Tab>` opens up Nerdtree
1. `<Leader>p` opens up fuzzy-file search
1. `<Leader>ff` opens up fuzzy-file search UI (via Telescope.nvim)
1. `<Leader>fg` opens up a live-grep search UI (via Telescope.nvim)
1. As stated above - `coq_vim` is installed (insanely fast auto-completion engine)

For a full list of keyboard shortcuts, checkout [the keybindings file](nvim/lua/key-bindings.lua)
