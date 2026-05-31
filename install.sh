#!/data/data/com.termux/files/usr/bin/bash -e
cd $"{HOME}"

echo "[1/3] 🧼 更换 Termux 镜像源..."
termux-change-repo
pkg -y upgrade

echo "[2/3] 📦 安装 所需工具..."
pkg install -y x11-repo
pkg install -y libtalloc proot xz-utils aria2 pv ffplay wget curl

echo "[3/3] 🌐 下载 Kali NetHunter一键部署脚本..."
curl -LO https://raw.githubusercontent.com/AliteIz/Kali_NetHunter_Termux/refs/heads/main/Install_Lyz.bin

echo "赋予脚本执行权限"
chmod +x ./Install_Lyz.bin

echo "运行脚本"
bash ./Install_Lyz.bin
