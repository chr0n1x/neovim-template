default: link-configs

# TODO: this is currently experimental. Packer.nvim does NOT support headless
#       package installation
packer-setup:
	nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
	nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerInstall'
	nvim --headless -c 'autocmd User COQdeps quitall'

link-configs:
	-mkdir ~/.config
	-ln -vs $(shell pwd)/nvim $(shell echo $$HOME)/.config/nvim

clean:
	rm -rf nvm/plugin ~/.local/share/nvim ~/.config/nvim ~/.cache/nvim
