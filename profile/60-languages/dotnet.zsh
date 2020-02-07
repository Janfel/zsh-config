# .NET Core

# Disable telemetry (seriously?).
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# Explicitly set root of installation.
export DOTNET_ROOT='/opt/dotnet'

export NUGET_PACKAGES="$XDG_DATA_HOME/NuGet/packages"

# Unofficial, change PATH when configurable.
export _DOTNET_HOME="$HOME/.dotnet"
export _DOTNET_TOOLPATH="$_DOTNET_HOME/tools"
path+=$_DOTNET_TOOLPATH
