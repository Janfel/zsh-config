export LUA_INIT="@$XDG_CONFIG_HOME/lua/init.lua"
export LUA_INIT_5_3="@$XDG_CONFIG_HOME/lua/init-5.3.lua"

export LUAROCKS_CONFIG="$XDG_CONFIG_HOME/luarocks/config.lua"
export LUAROCKS_CONFIG_5_3="$XDG_CONFIG_HOME/luarocks/config-5.3.lua"

lua_path_5_3=(
    "/usr/share/lua/5.3/?.lua"
    "/usr/share/lua/5.3/?/init.lua"
    "/usr/lib/lua/5.3/?.lua"
    "/usr/lib/lua/5.3/?/init.lua"
    "/usr/local/share/lua/5.3/?.lua"
    "/usr/local/share/lua/5.3/?/init.lua"
    "/usr/local/lib/lua/5.3/?.lua"
    "/usr/local/lib/lua/5.3/?/init.lua"
    $lua_path_5_3
    "$XDG_USER_BASE/share/lua/5.3/?.lua"
    "$XDG_USER_BASE/share/lua/5.3/?/init.lua"
    "$XDG_USER_BASE/lib/lua/5.3/?.lua"
    "$XDG_USER_BASE/lib/lua/5.3/?/init.lua"
    # remember to change the luarocks config
    './?.lua'
    './?/init.lua'
)
lua_cpath_5_3=(
    "/usr/lib/lua/5.3/?.so"
    "/usr/lib/lua/5.3/loadall.so"
    "/usr/local/lib/lua/5.3/?.so"
    "/usr/local/lib/lua/5.3/loadall.so"
    $lua_cpath_5_3
    "$XDG_USER_BASE/lib/lua/5.3/?.so"
    "$XDG_USER_BASE/lib/lua/5.3/loadall.so"
    './?.so'
)
lua_path=$lua_path_5_3
lua_cpath=$lua_cpath_5_3
#if (( $+commands[luarocks] )) {
#    eval $(luarocks path --no-bin 2> /dev/null)
#}
#path+=(
    #$LUAROCKS_HOME_TREE/bin
    #${(s.:.)"$(luarocks path --lr-bin)"}
#)
