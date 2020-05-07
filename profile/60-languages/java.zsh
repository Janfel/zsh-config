# Java

export JAVA_HOME='/usr/lib/jvm/default'
export JRE_HOME='/usr/lib/jvm/default-runtime'
export JAVA_FONTS='/usr/share/fonts/TTF'

java_options=(
	# Java config root
	# "-Djava.util.prefs.userRoot='$XDG_CONFIG_HOME/java'"

	# Anti-Aliasing
	'-Dawt.useSystemAAFontSettings=on'
	'-Dswing.aatext=true'

	# GTK Look-and-Feel
	'-Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
	'-Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

	# Opengl Renderer
	'-Dsun.java2d.opengl=true'

	# GTK 3
	'-Djdk.gtk.version=3'

	# Default options
	$java_options
)

#silent_java_options=(
#    $silent_java_options
#)
