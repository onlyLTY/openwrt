#!/bin/bash
curl -s "https://downloads.openwrt.org/snapshots/targets/x86/64/packages/Packages.manifest" | grep -oE -m 1 'kernel \(=.*\)' | awk -F\- '{print $3}' | sed 's,),,g' > .vermagic
