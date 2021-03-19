# Go

###if   [[ $HOST == PhantomJFL ]]
gopath=("$HOME/var/go" $gopath)
###elif [[ $HOST == TeslaJFL   ]]
gopath=("$HOME/go"     $gopath)
###else
gopath=("$HOME/go"     $gopath)
###endif

path+=(${^gopath}/bin)
