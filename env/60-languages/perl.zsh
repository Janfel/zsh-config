export PERL_HOME="$XDG_DATA_HOME/perl5"

typeset -xUT PERL5LIB perl5lib
perl5lib=($PERL_HOME $perl5lib)

typeset -xUT PERL_LOCAL_LIB_ROOT perl_local_lib_root
perl_local_lib_root=($PERL_HOME $perl_local_lib_root)

export PERL_MB_OPT="--install_base \"$PERL_HOME\""
export PERL_MM_OPT="INSTALL_BASE=\"$PERL_HOME\""
