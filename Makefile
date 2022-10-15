update:
	git submodule foreach git pull

install: install-externals install-core

uninstall:
	@rm -rf ~/.zshrc ~/.tmux.conf ~/.gitconfig

install-core:
	@echo "Core install tasks."
	@echo "Backing up your .zshrc iff neccessary..."
	@!(ls $(HOME)/.zshrc > /dev/null 2> /dev/null) || mv $(HOME)/.zshrc $(PWD)/zshrc.bak # Make backup of -zshrc if necessary
	@echo "Creating .zshrc in your home directory..."
	@ln -s $(PWD)/zsh/zshrc $(HOME)/.zshrc # update the link to .zshrc
	@echo "Creating .tmux in your home directory..."
	@ln -s $(PWD)/tmux/tmux.conf $(HOME)/.tmux.conf # update the link to .tmux.conf
	@echo "Creating .gitconfig in your home directory..."
	@ln -s $(PWD)/.gitconfig $(HOME)/.gitconfig # update the link to .gitconfig
	@echo "Config nvim"
	@(ls $(HOME)/.config/nvim/init.lua > /dev/null 2> /dev/null) || git clone https://github.com/NvChad/NvChad ~/.config/nvim
	@ln -s $(PWD)/nvchad $(HOME)/.config/nvim/lua/custom


	@echo "DONE with core install tasks."

install-externals:
	git submodule update --init
