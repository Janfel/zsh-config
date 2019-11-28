export DOTNET_CLI_TELEMETRY_OPTOUT=1
export DOTNET_ROOT='/opt/dotnet'
# Unofficial, change PATH when configurable.
export _DOTNET_HOME="$HOME/.dotnet"
export _DOTNET_TOOLPATH="$_DOTNET_HOME/tools"
path+=$_DOTNET_TOOLPATH
export NUGET_PACKAGES="$XDG_DATA_HOME/NuGet/packages"
