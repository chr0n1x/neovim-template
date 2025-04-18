default: link-configs

# this is OPTIONAL to run. don't use this if you're managing your own symlinks
# via scripts or stow
link-configs:
	-mkdir ~/.config
	-ln -vs $(shell pwd) $(shell echo $$HOME)/.config/nvim

clean:
	rm -rf nvim/plugin ~/.local/share/nvim ~/.config/nvim ~/.cache/nvim
