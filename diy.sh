# 请在下方输入自定义命令(一般用来安装第三方插件)(可以留空)

# 编辑默认的lan口ip地址
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# 编辑默认的主题
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
sed -i 's/CONFIG_PACKAGE_kmod-fast-classifier=y/# CONFIG_PACKAGE_kmod-fast-classifier=y/' .config
sed -i 's/CONFIG_PACKAGE_kmod-shortcut-fe-cm=y/# CONFIG_PACKAGE_kmod-shortcut-fe-cm=y/' .config
sed -i 's/CONFIG_PACKAGE_kmod-shortcut-fe-drv=y/# CONFIG_PACKAGE_kmod-shortcut-fe-drv=y/' .config

# 编辑默认的luci显示的固件名称
#sed -i 's/OpenWrt/ZWRT/g' package/base-files/files/bin/config_generate
#sed -i 's/ImmortalWrt/ImmortalWrt/g' package/base-files/files/bin/config_generate

# 添加额外的软件包，echo 方式和git clone 方式二选一即可
#echo 'src-git kenzok8 https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
#echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default
echo 'src-git helloworld https://github.com/fw876/helloworld.git' >>feeds.conf.default
#git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
#git clone https://github.com/kenzok8/small.git package/small
#git clone https://github.com/SunBK201/UA3F.git package/UA3F
git clone https://github.com/CrazyPegasus/luci-app-accesscontrol-plus.git package/luci-app-accesscontrol-plus
git clone https://github.com/kongfl888/luci-app-adbyby-plus-lite.git package/luci-app-adbyby-plus-lite
git clone https://github.com/stevenjoezhang/luci-app-adguardhome.git package/luci-app-adguardhome
git clone https://github.com/ophub/luci-app-amlogic.git package/luci-app-amlogic
git clone https://github.com/DustReliant/luci-app-filetransfer.git package/luci-app-filetransfer
git clone https://github.com/chenmozhijin/turboacc.git package/turboacc
