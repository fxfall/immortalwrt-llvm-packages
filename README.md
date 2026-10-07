# ImmortalWrt LLVM feed overlays

This repository keeps the package/feed changes for
https://github.com/fxfall/immortalwrt-llvm separate from the main
ImmortalWrt source tree.

The patches directory contains small diffs against the configured qmodem,
luci, and packages feeds. Added package patch files are stored below
feeds/<feed>/... using their original source-tree paths. Other feed files
continue to come from the upstream feed repositories.

Apply after updating configured feeds and before installing/building them:

    ./apply.sh /path/to/immortalwrt

The LLVM x86_64 Actions workflow clones this repository and applies the
overlay automatically. Package source files retain the licensing terms of
their respective upstream feed projects; this overlay does not relicense them.
