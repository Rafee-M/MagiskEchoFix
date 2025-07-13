#!/system/bin/sh

MODDIR=${0%/*}
TARGET="/vendor/etc/audio_effects.xml"
MODFILE="$MODDIR/system/vendor/etc/audio_effects.xml"

# Create parent directory
mkdir -p "$(dirname "$MODFILE")"

# Create empty XML if missing
[ -f "$MODFILE" ] || echo '<?xml version="1.0" encoding="UTF-8"?><effects />' > "$MODFILE"

# Apply bind mount silently
if [ -f "$TARGET" ]; then
    mount -o bind "$MODFILE" "$TARGET" >/dev/null 2>&1
else
    exit 1  # Fail silently if target missing
fi