PATH="$ZSH/bin:$PATH"

if [[ -d /usr/local/opt/gnu-tar/libexec/gnubin ]] then
    PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
fi

if [[ -d $HOME/bin/ ]] then
	PATH="$HOME/bin:$PATH"
fi

if [[ -d $HOME/.local/bin/ ]] then
	PATH="$HOME/.local/bin:$PATH"
fi

if [[ -d $HOME/.composer/vendor/bin ]] then
	PATH="$HOME/.composer/vendor/bin:$PATH"
fi

export PATH
