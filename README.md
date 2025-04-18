NeoVim Template
====

Don't know where to start with [NeoVim](https://neovim.io/)? Just want a quick-start template with bare-bones IDE functionality? Or just want to restart your Vim setup but with NeoVim?

Hopefully this makes your life easier!

This template provides a [lazy.nvim](https://lazy.folke.io/) setup with some bare-bones plugins and lua configurations, lightly organized so that it should be simple to see what's going on if you're new to NeoVim & Lua, but _just_ complex enough to showcase what's possible with the NeoVim LuaJIT runtime.

# Requirements

Make sure that you have:

1. `python` installed, with a working installation of `pip` (e.g.: `apt install python py-pip`)
2. NeoVim version `>= 0.11` (e.g.: `brew install neovim`)

MacOS users have it easy, you should just be able to use `brew` to install everything.

For other users, you may have to compile `neovim` from source.

## Quickstart for MacOS Users

```sh
brew update
brew install neovim python3 ripgrep
```

Note that this installs `python3` globally. `python2` may be ok just as long as you have `pip` installed (I haven't tested it 🤪 )

# Usage

1. Click the `Use template` button to the top right 👆
2. Clone down your new repo
3. `cd` into your repo. Run `make` - this will symlink all files in your `home` directory to this repository.

## Initial Startup

Run `nvim`, and `Lazy` will start up and download everything for you!

## Configuring Yourself

Now that you've made your own configuration repository from this template, remember that you can customize it yourself!

Checkout the [AWESOME NeoVim Repo](https://github.com/rockerBOO/awesome-neovim) for ideas.

**If anything goes wrong, you should be able to just run `make clean` and start over.**

## Using with GNU Stow

The structure of this template is set up so that you can include it as a submodule in your own dotfiles repo.

Steps:

1. make your own copy/fork of this repo (green button at top right of repo)
2. `git submodule add git@github.com:<username>/<renamed-neovim-template-repo> .config/nvim`

# Features / Plugins

For a full list of features pre-baked, checkout the [`key-bindings.lua` file](lua/key-bindings.lua).

A few selling points though!

1. `Leader` is mapped to `<Space>` - so for the next couple of shortcuts, you hit `Spacebar` for `<Leader>`
1. `<Leader><Tab>` opens up Nerdtree
1. `<Leader>p` opens up fuzzy-file search
1. `<Leader>g` opens up a live-grep search UI (via Telescope.nvim)
1. As stated above - `coq_vim` is installed (insanely fast auto-completion engine)

For a full list of keyboard shortcuts and details checkout [the keybindings file](nvim/lua/key-bindings.lua)

# Extras

This template tries to keep things minimal. So fonts are omitted, even though some plugins can utilize them. For awesome fonts checkout:

1. [Nerd Fonts / FontForge](https://webinstall.dev/nerdfont/)
1. When using iTerm2, [turn on glyphs support](https://www.reddit.com/r/vim/comments/ee19ed/til_people_using_iterm2_if_you_see_the_triangular/)
