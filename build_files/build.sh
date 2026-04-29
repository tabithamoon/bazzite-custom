#!/bin/bash
set -ouex pipefail

### Packages
# Enable COPRs
dnf5 -y copr enable ublue-os/packages

# Install general packages
dnf5 -y install btop fish

# Remove unneeded packages
dnf5 -y remove gnome-software* firefox*

# Disable COPRs
dnf5 -y copr disable ublue-os/packages

### System units
# systemctl enable podman.socket
