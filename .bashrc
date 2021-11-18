# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias make='make -j16'
alias mnt='mount | grep -E ^/dev | column -t'
alias ve='python3 -m venv ./venv'
alias va='source ./venv/bin/activate' 

if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi
PS1="\[\033[32m\]\u@\h \[\033[36m\]\W:\$\[\033[97m\]"
unset rc

