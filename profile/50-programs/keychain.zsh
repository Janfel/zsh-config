keychain_keys=(
#    id_ed25519
#    id_rsa
    github_rsa
    gitlab_haskell_ed25519
    aur_rsa
    linode_nextcloud
)
eval $(SHELL=/usr/bin/zsh keychain --eval --quiet $keychain_keys)
unset keychain_keys
