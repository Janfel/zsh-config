# Go

case $HOST in
PhantomJFL) gopath=($HOME/var/go $gopath) ;;
TeslaJFL|*) gopath=($HOME/go $gopath) ;;
esac

path+=(${^gopath}/bin)
