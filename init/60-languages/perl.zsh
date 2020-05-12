# Perl
###if (($+commands[perl]))

function perl_build_env() {
	: 'Reset the Perl build variables.
	This is necessary because some packages do not
	isolate the build process correctly.'
	export PERL_MM_USE_DEFAULT=1 PERL5LIB="" \
		PERL_AUTOINSTALL=--skipdeps          \
		PERL_MM_OPT="INSTALLDIRS=vendor"     \
		PERL_MB_OPT="--installdirs vendor"   \
		MODULEBUILDRC=/dev/null
	:
}

