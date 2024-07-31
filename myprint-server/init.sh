yum install -y fontconfig

cd /opt/myprint-server/
cp /opt/myprint-server/fonts/* /usr/share/fonts/
fc-cache -fv
fc-list

gunzip myprint-server.gz
rm -rf myprint-server.gz

yum install -y nss libdrm mesa-libgbm libXcomposite libXcursor libXdamage libXext libXi libXtst cups-libs libXScrnSaver libXrandr alsa-lib atk at-spi2-atk gtk3 libdrm-devel

#./opt/myprint-server/myprint-server start init
