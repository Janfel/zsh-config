# Java

# See https://wiki.archlinux.org/index.php/Java#Tips_and_tricks.
# Applications are all programs started using the ‘java’ command.
# Tools are the programs shipped with the JDK, like ‘javac’ and ‘jshell’.

export JAVA_HOME='/usr/lib/jvm/default'
export JRE_HOME='/usr/lib/jvm/default-runtime'
export JAVA_FONTS='/usr/share/fonts/TTF'

# List of Look-and-Feel classes:
# javax.swing.plaf.metal.MetalLookAndFeel
# javax.swing.plaf.nimbus.NimbusLookAndFeel
# com.sun.java.swing.plaf.gtk.GTKLookAndFeel
# com.sun.java.swing.plaf.motif.MotifLookAndFeel
# com.sun.java.swing.plaf.windows.WindowsLookAndFeel

# Affects applications and tools.
# The documented replacement for _JAVA_OPTIONS.
java_tool_options=(
	$java_tool_options

	# Java config root
	# "-Djava.util.prefs.userRoot='$XDG_CONFIG_HOME/java'"

	# GTK Look-and-Feel (looks very bad when using dark mode)
	# '-Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
	# '-Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

	# OpenGL Renderer
	'-Dsun.java2d.opengl=true'

	# GTK Version
	# Java 9+ defaults to GTK3, while Java 8 defaults to GTK2.
	'-Djdk.gtk.version=3'
)

# Font Anti-Aliasing
# See https://wiki.archlinux.org/index.php/Java_Runtime_Environment_fonts for
# a list of possible values.

###if   [[ $HOST == PhantomJFL ]]
java_tool_options+=('-Dawt.useSystemAAFontSettings=lcd')
###elif [[ $HOST == TeslaJFL   ]]
java_tool_options+=('-Dawt.useSystemAAFontSettings=gasp')
###else
java_tool_options+=('-Dawt.useSystemAAFontSettings=gasp')
###endif

# Affects only applications started using the ‘java’ command.
# Supported since Java 9, will be ignored by Java 8.
#jdk_java_options=($jdk_java_options)


# Gradle

# Specifies the Gradle user home directory defaulting to “$USER_HOME/.gradle”.
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"

# Specifies JVM arguments to use when starting the Gradle client VM. The client
# VM only handles command line input/output, so it is rare that one would need
# to change its VM options. The actual build is run by the Gradle daemon, which
# is not affected by this environment variable.
# gradle_opts=()
