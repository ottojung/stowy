#! /bin/sh

SOURCE="$1"
TARGET="$2"

if test -L "$SOURCE"
then cp --no-dereference "$SOURCE" "$TARGET"
else
	if test -d "$SOURCE"
	then mkdir -p "$TARGET"
	else ln --physical --force "$SOURCE" "$TARGET"
	fi
fi
