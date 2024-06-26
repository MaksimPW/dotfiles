setup:
	cd ~/. && cp .gitconfig .gitconfig_backup
	cd ~/. && cp .aliases .aliases_backup

	cd ~/. && wget -O https://raw.githubusercontent.com/MaksimPW/dotfiles/master/.gitconfig
	cd ~/. && wget -O https://raw.githubusercontent.com/MaksimPW/dotfiles/master/.aliases
