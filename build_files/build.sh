#!/bin/bash
set -ouex pipefail

### Packages
# Enable COPRs
dnf5 -y copr enable ublue-os/packages

# Install general packages
dnf5 -y install btop android-tools

# Remove unused packages
dnf5 -y remove kate kde-connect* kcm-fcitx5 fcitx5-* 

# Disable COPRs
dnf5 -y copr disable ublue-os/packages

### System units
# systemctl enable podman.socket
