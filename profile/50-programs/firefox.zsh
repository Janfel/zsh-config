# Mozilla Firefox

# This depends on xdg-desktop-portal and xdg-desktop-portal-kde.
# It enables the use of KDE file dialogues, but breaks the
# application handler for MIME types.
# Manjaro activates this by default.
unset GTK_USE_PORTAL
