#!/usr/bin/env bash

echo "This script requires sudo! (installing stuff via apt)"
echo "Intended for PopOS 20.04"
echo -n "Proceed? [y/n]:"
read -n 1 ans

if [[ $ans == "y" ]]; then
	sudo apt update
	echo -e "\nInstalling development libs"
	sudo apt install build-essential git zsh neovim curl tmux stow docker.io docker-compose

	echo "NVM (Node Version Manager)"
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

	echo "Yarn"
	curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - && \
		echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
	sudo apt update
	sudo apt install --no-install-recommends yarn

	echo "fzf"
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	~/.fzf/install

	echo "TPM (TmuxPluginManager)"
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

	echo "Docker permissions"
	sudo groupadd docker
	sudo usermod -aG docker $USER
	sudo systemctl enable --now docker

	echo "Wine/Lutris/Steam"
	wget -O - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -

	sudo apt update
	sudo apt install libvulkan1 lutris steam libvulkan1:i386

	echo "oh-my-zsh"
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";
else
	echo -e "\nQuitting!"
fi
