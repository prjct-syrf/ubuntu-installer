#!/data/data/com.termux/files/usr/bin/bash
# 🚀 Script Install Ubuntu di Termux
# Author: Sherif Fadhil
# GitHub: https://github.com/prjct-syrf

clear
# Banner Bendera Merah Putih
echo -e "\033[1;31m████████╗██╗  ██╗███████╗██████╗ ██╗███████╗\033[0m"
echo -e "\033[1;31m╚══██╔══╝██║  ██║██╔════╝██╔══██╗██║██╔════╝\033[0m"
echo -e "\033[1;31m   ██║   ███████║█████╗  ██████╔╝██║███████╗\033[0m"
echo -e "\033[1;37m   ██║   ██╔══██║██╔══╝  ██╔═══╝ ██║╚════██║\033[0m"
echo -e "\033[1;37m   ██║   ██║  ██║███████╗██║     ██║███████║\033[0m"
echo -e "\033[1;37m   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝╚══════╝\033[0m"
echo ""
echo " 👤 Author : Sherif Fadhil"
echo " 🌐 GitHub : https://github.com/prjct-syrf"
echo "============================================================================================"

# Update & upgrade Termux
pkg update -y && pkg upgrade -y

# Install proot-distro
pkg install proot-distro -y

# Install Ubuntu
echo "[*] 🚀 Menginstall Ubuntu..."
proot-distro install ubuntu

# Auto setup paket dasar di Ubuntu
echo "[*] ⚙️  Menambahkan paket dasar ke Ubuntu..."
proot-distro login ubuntu -- apt update -y
proot-distro login ubuntu -- apt upgrade -y
proot-distro login ubuntu -- apt install -y python3 python3-pip git curl wget nano neofetch

# Tambahkan custom banner ke Ubuntu
UBUNTU_ROOTFS=~/../usr/var/lib/proot-distro/installed-rootfs/ubuntu
cat << 'EOF' > $UBUNTU_ROOTFS/root/.bashrc
clear
echo -e "\033[1;31m████████╗██╗  ██╗███████╗██████╗ ██╗███████╗\033[0m"
echo -e "\033[1;31m╚══██╔══╝██║  ██║██╔════╝██╔══██╗██║██╔════╝\033[0m"
echo -e "\033[1;31m   ██║   ███████║█████╗  ██████╔╝██║███████╗\033[0m"
echo -e "\033[1;37m   ██║   ██╔══██║██╔══╝  ██╔═══╝ ██║╚════██║\033[0m"
echo -e "\033[1;37m   ██║   ██║  ██║███████╗██║     ██║███████║\033[0m"
echo -e "\033[1;37m   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝╚══════╝\033[0m"
echo ""
echo " 👤 Author : Sherif Fadhil"
echo " 🌐 GitHub : https://github.com/prjct-syrf"
echo ""
neofetch
EOF

echo "============================================================================================"
echo "✅ Installasi Ubuntu selesai!"
echo "👉 Untuk masuk Ubuntu: proot-distro login ubuntu"
echo "👉 Untuk keluar: exit"
echo "============================================================================================"
echo "👤 Script by Sherif Fadhil"
echo "🌐 https://github.com/prjct-syrf"
echo "============================================================================================"
