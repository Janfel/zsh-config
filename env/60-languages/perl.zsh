
# Package management

export PERL_BASE="$XDG_USER_BASE"

typeset -xUT PERL5LIB perl5lib
perl5lib=($PERL_BASE $perl5lib)

typeset -xUT PERL_LOCAL_LIB_ROOT perl_local_lib_root
perl_local_lib_root=($PERL_BASE $perl_local_lib_root)

typeset -xUT PERL_MB_OPT perl_mb_opt ' '
perl_mb_opt+="--install_base '$PERL_BASE'"

typeset -xUT PERL_MM_OPT perl_mm_opt ' '
perl_mm_opt+="INSTALL_BASE='$PERL_BASE'"
