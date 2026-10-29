#!/bin/sh

SRC_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
SRC="$SRC_DIR/squirr-fetch.nut"
DEST="${DEST:-/usr/bin/squirrfetch}"

if [ ! -f "$SRC" ]; then
    echo "Oh no, it failed, bro!"
    exit 1
fi

if [ -w "$(dirname -- "$DEST")" ]; then
    SUDO=""
elif command -v sudo >/dev/null 2>&1; then
    SUDO="sudo"
elif command -v doas >/dev/null 2>&1; then
    SUDO="doas"
else
    SUDO=""
fi

if ! $SUDO install -m 755 "$SRC" "$DEST"; then
    echo "Oh no, it failed, bro!"
    exit 1
fi

echo "Congrats, you've installed Squirfetch, bro!"

if ! command -v squirrel3 >/dev/null 2>&1; then
    echo "Note: squirrel3 was not found, so $DEST won't run until you install Squirrel."
fi
