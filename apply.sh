#!/bin/sh
set -eu

overlay_root=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
source_root=${1:-$PWD}

if [ ! -f "$source_root/feeds.conf.default" ] || [ ! -d "$source_root/feeds" ]; then
    echo "usage: $0 /path/to/immortalwrt-source" >&2
    exit 2
fi

for feed in qmodem luci packages; do
    if [ ! -d "$source_root/feeds/$feed" ]; then
        echo "missing feed: $source_root/feeds/$feed" >&2
        exit 2
    fi
    git -C "$source_root/feeds/$feed" apply --check "$overlay_root/patches/$feed.patch"
done

for feed in qmodem luci packages; do
    git -C "$source_root/feeds/$feed" apply "$overlay_root/patches/$feed.patch"
done

cp -R "$overlay_root/feeds/." "$source_root/feeds/"
