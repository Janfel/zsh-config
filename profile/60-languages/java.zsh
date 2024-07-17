# Java

# See https://wiki.archlinux.org/index.php/Java#Tips_and_tricks.
# Applications are all programs started using the ‘java’ command.
# Tools are the programs shipped with the JDK, like ‘javac’ and ‘jshell’.

# Setting these variables breaks scripts that prepend a specific version of
# Java onto ‘PATH’, such as the PKGBUILD for PrismLauncher.
# export JAVA_HOME='/usr/lib/jvm/default'
# export JRE_HOME='/usr/lib/jvm/default-runtime'

# Tell Java where to find the system TrueType fonts.
# Is this still necessary on a non-bare-bones system?
export JAVA_FONTS='/usr/share/fonts/TTF'

# List of Look-and-Feel classes:
# javax.swing.plaf.metal.MetalLookAndFeel
# javax.swing.plaf.nimbus.NimbusLookAndFeel
# com.sun.java.swing.plaf.gtk.GTKLookAndFeel
# com.sun.java.swing.plaf.motif.MotifLookAndFeel
# com.sun.java.swing.plaf.windows.WindowsLookAndFeel

# JAVA_TOOL_OPTIONS
# Affects applications and tools.
# The documented replacement for _JAVA_OPTIONS.

# Java config root
# java_tool_options+="-Djava.util.prefs.userRoot='$XDG_CONFIG_HOME/java'"

# GTK Look-and-Feel (looks very bad when using dark mode)
# java_tool_options+='-Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
# java_tool_options+='-Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

# GTK Version
# Used by JavaFX, the GTK-LaF and other components.
# Java 9+ defaults to GTK3 (?), while Java 8 defaults to GTK2.
# java_tool_options+='-Djdk.gtk.version=3'

# JDK_JAVA_OPTIONS
# Affects only applications started using the ‘java’ command.
# Supported since Java 9, will be ignored by Java 8.

# OpenGL Renderer
# This breaks the rendering of multiple GUI applications,
# which is why it is not enabled by default.
# jdk_java_options+='-Dsun.java2d.opengl=true'

# Font Anti-Aliasing
# See https://wiki.archlinux.org/index.php/Java_Runtime_Environment_fonts for
# a list of possible values.
# This shouldn’t be necessary on a system that runs an integrated
# ‘xsettingsd’, like Plasma with ‘kde-gtk-config’ or GNOME.
# jdk_java_options+='-Dawt.useSystemAAFontSettings=gasp'
# jdk_java_options+='-Dswing.aatext=true'

# Gradle

# Specifies the Gradle user home directory defaulting to “$USER_HOME/.gradle”.
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"

# Specifies JVM arguments to use when starting the Gradle client VM. The client
# VM only handles command line input/output, so it is rare that one would need
# to change its VM options. The actual build is run by the Gradle daemon, which
# is not affected by this environment variable.
# gradle_opts=()
