#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.90.1/g' package/base-files/files/bin/config_generate
git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome
git clone https://github.com/project-openwrt/luci-app-koolproxyR package/luci-app-koolproxyR
git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan
echo "src-git lienol https://github.com/Lienol/openwrt-package" >> ./feeds.conf.default
./scripts/feeds clean
./scripts/feeds update -a
./scripts/feeds install -a
