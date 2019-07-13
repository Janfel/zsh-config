export LUA_INIT="@$XDG_CONFIG_HOME/lua/init.lua"
export LUA_INIT_5_3="@$XDG_CONFIG_HOME/lua/init-5.3.lua"

export LUAROCKS_CONFIG="$XDG_CONFIG_HOME/luarocks/config.lua"
export LUAROCKS_CONFIG_5_3="$XDG_CONFIG_HOME/luarocks/config-5.3.lua"
eval $(luarocks path --no-bin 2> /dev/null)
