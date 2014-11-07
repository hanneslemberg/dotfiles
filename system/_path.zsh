PATH="$ZSH/bin:$PATH"

if [[ -d $HOME/bin/ ]] then
	PATH="$HOME/bin/:$PATH"
fi

export PATH
