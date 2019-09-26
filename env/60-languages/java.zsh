# Placeholder
#export JAVA_HOME="/usr/lib/jvm/default"
#export JRE_HOME="/usr/lib/jvm/default-runtime"
typeset -T  _JAVA_OPTIONS java_options ' '
typeset -Ux _JAVA_OPTIONS java_options
java_options=(
   '-Dawt.useSystemAAFontSettings=on' 
   '-Dswing.aatext=true'
   '-Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
   '-Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
   '-Dsun.java2d.opengl=true'
   $java_options
)

#typeset -T  _SILENT_JAVA_OPTIONS silent_java_options ' '
#typeset -Ux _SILENT_JAVA_OPTIONS silent_java_options
#silent_java_options=(
#    $silent_java_options
#)
#alias java='java $_SILENT_JAVA_OPTIONS'
