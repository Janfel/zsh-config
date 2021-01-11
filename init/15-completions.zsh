# Completions

###if (($+commands[rederr]))
compctl _command rederr
###endif

###if (($+commands[dotnet]))
_dotnet_zsh_complete()
{
  local completions=("$(dotnet complete "$words")")

  reply=( "${(ps:\n:)completions}" )
}

compctl -K _dotnet_zsh_complete dotnet
###endif
