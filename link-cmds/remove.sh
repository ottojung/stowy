#! /bin/sh

SOURCE="$1"
TARGET="$2"

while true
do
	case "$TARGET" in
		*/) TARGET="${TARGET%?}" ;;
		*) break ;;
	esac
done

rm -vf "$TARGET"
