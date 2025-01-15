
build:
	devcontainer up --workspace-folder ./ \
		--dotfiles-repository https://github.com/russelltsherman/dot.git \
		--remove-existing-container

run: 
	devcontainer exec --workspace-folder ./ /bin/zsh
