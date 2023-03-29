#!/bin/bash
linux_config=$(git rev-parse --show-toplevel)
xbps-install -Su $(cat ${linux_config}/void_linux_pkglist.txt)