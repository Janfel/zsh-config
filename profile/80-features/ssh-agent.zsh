# SSH Agent

###if [[ "$(systemctl --user is-enabled ssh-agent.service)" != enabled ]]
###warn ssh-agent.service is not enabled, skipping
###else

# Make ssh-agent.service the default ssh-agent.
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
