# See man perlrun lines 220 and 1090
export PERL_UNICODE=SDA
export PERL_CPANM_HOME="$XDG_DATA_HOME/cpanminus"

perl5opt=(
    '-Mutf8'
    '-Mfeature=unicode_strings'
    $perl5opt
)

# cpan_opts=()
# cpanm_opts=()

export PERL_BASE="$XDG_USER_BASE"
perl5lib=($PERL_BASE $perl5lib)
perl_local_lib_root=($PERL_BASE $perl_local_lib_root)
perl_mb_opt+="--install_base '$PERL_BASE'"
perl_mm_opt+="INSTALL_BASE='$PERL_BASE'"

#path+=$PERL_BASE/bin
