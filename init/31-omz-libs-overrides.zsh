# Oh-My-Zsh Library Overrides

# Completion
# The default “partial-word and substring completion” somehow breaks when trying
# to complete a directory like the following, by appending an extra “M” onto the
# common prefix, causing only “twitter_member_*.py” to be completed.
#
# scripts
# ├── twitter_list_members.py
# ├── twitter_member_follows_old.py
# └── twitter_member_follows.py
#
# This fix overrides it with a version that is not hyphen-insensitive, but it is
# more future-proof in it’s handling of uppercase and lowercase characters.
# It also implements smart-case, which the original did not have.

zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' 'r:|=*' 'l:|=* r:|=*'
