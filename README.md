# ImmortalWrt LLVM feed overlays

This repository keeps the package/feed changes for
https://github.com/fxfall/immortalwrt-llvm separate from the main
ImmortalWrt source tree.

The directory layout mirrors the source tree's feeds/<feed>/... paths.
Only changed package files and added patches are included; upstream feed
repositories remain the source of all other files.

Apply after updating configured feeds and before installing/building them:

    ./apply.sh /path/to/immortalwrt

The LLVM x86_64 Actions workflow clones this repository and applies the
overlay automatically. Package source files retain the licensing terms of
their respective upstream feed projects; this overlay does not relicense them.
