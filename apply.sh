#!/bin/sh
set -eu

overlay_root=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
source_root=${1:-$PWD}

if [ ! -f "$source_root/feeds.conf.default" ] || [ ! -d "$source_root/feeds" ]; then
    echo "usage: $0 /path/to/immortalwrt-source" >&2
    exit 2
fi

cp -R "$overlay_root/feeds/." "$source_root/feeds/"
