# Perl

# Enable unicode handling in Perl.
# Search “man perlrun” for “-C” and “PERL_UNICODE”.
export PERL_UNICODE=SDAL

perl5opt=(
	'-Mutf8'
	'-Mfeature=unicode_strings'
	$perl5opt
)

# Install packages into ~/.local.
export PERL_BASE="$XDG_USER_BASE"
perl5lib=(
	$PERL_BASE/lib/perl5
	$perl5lib
)
perl_local_lib_root=($PERL_BASE $perl_local_lib_root)
perl_mm_opt+="INSTALL_BASE='$PERL_BASE'"
perl_mb_opt+="--install_base '$PERL_BASE'"
#path+=$PERL_BASE/bin

# CPAN
export PERL_CPANM_HOME="$XDG_DATA_HOME/cpanminus"
# cpan_opts=()
# cpanm_opts=()

# Perl::Tidy
export PERLTIDY="$XDG_CONFIG_HOME/perl/perltidy.conf"
