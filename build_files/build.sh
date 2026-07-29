#!/bin/bash
set -ouex pipefail

### Packages
# Enable COPRs
dnf5 -y copr enable faugus/faugus-launcher
dnf5 -y copr enable ublue-os/packages

# Install general packages
dnf5 -y install btop android-tools

# Install gaming related packages
dnf5 -y install faugus-launcher

# Remove unused packages
dnf5 -y remove kcm-fcitx5 fcitx5-* kate \
    kdeconnectd kde-connect* \
    lutris tailscale 

# Disable COPRs
dnf5 -y copr disable ublue-os/packages
dnf5 -y copr disable faugus/faugus-launcher

### System units
# systemctl enable podman.socket
