# SSH AGENT
if [ -z "$SSH_AUTH_SOCK" ] ; then
    eval `ssh-agent`
    ssh-add
fi

# THEME
ZSH_THEME="powerlevel10k/powerlevel10k"
