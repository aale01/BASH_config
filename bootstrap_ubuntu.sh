#!/bin/bash

set -e

echo "=== Ubuntu Provisioning Script ==="

sudo apt update && sudo apt upgrade -y


# =========================
# BASE SYSTEM
# =========================
echo "[+] Installing base tools..."

sudo apt install -y \
build-essential \
curl wget git \
vim nano \
htop tmux \
unzip zip tar \
tree jq file \
lsof


# =========================
# SYSTEM MONITORING
# =========================
echo "[+] Installing system monitoring tools..."

sudo apt install -y \
neofetch \
btop \
iotop iftop \
sysstat \
lm-sensors \
glances


# =========================
# NETWORKING
# =========================
echo "[+] Installing networking tools..."

sudo apt install -y \
net-tools \
iproute2 \
dnsutils \
traceroute \
nmap \
netcat-openbsd \
tcpdump \
whois


# =========================
# DEV TOOLCHAIN
# =========================
echo "[+] Installing development tools..."

sudo apt install -y \
gcc g++ make cmake pkg-config \
python3 python3-pip python3-venv \
nodejs npm


# =========================
# SHELL & MODERN TOOLS
# =========================
echo "[+] Installing shell enhancements..."

sudo apt install -y \
zsh fish \
fzf ripgrep fd-find \
ncdu duf


# =========================
# SECURITY / SYSTEM
# =========================
echo "[+] Installing security tools..."

sudo apt install -y \
ufw fail2ban \
apparmor-utils


# =========================
# ARCHIVE TOOLS
# =========================
echo "[+] Installing archive tools..."

sudo apt install -y \
p7zip-full \
unrar rar \
xz-utils


# =========================
# OPTIONAL POWER TOOLS
# =========================
echo "[+] Installing power tools..."

sudo apt install -y \
httpie


# =========================
# MODERN REPLACEMENTS (optional but great)
# =========================
echo "[+] Installing modern CLI replacements..."

sudo apt install -y \
bat eza zoxide


# =========================
# CLEANUP
# =========================
echo "[+] Cleaning up..."

sudo apt autoremove -y
sudo apt autoclean

echo "=== DONE ==="
echo "Reboot recommended."
