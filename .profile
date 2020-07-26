export EDITOR=/usr/bin/nvim
export PAGER=less
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=/usr/bin/chromium
EXTRA_BINARY_PATH=$HOME/.local/bin
PATH=$EXTRA_BINARY_PATH:$PATH

# hidpi for gtk apps
export GDK_SCALE=2
export GDK_DPI_SCALE=0.5
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_STYLE_OVERRIDE=kvantum
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export "QT_SCREEN_SCALE_FACTORS=2;2"

