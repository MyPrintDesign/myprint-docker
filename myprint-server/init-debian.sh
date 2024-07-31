apt install -y fontconfig

cd /opt/myprint-server/
cp /opt/myprint-server/fonts/* /usr/share/fonts/
fc-cache -fv
fc-list

gunzip myprint-server.gz
rm -rf myprint-server.gz

apt install libnss3 libnss3-tools libnspr4 libatk1.0-0 libatk-bridge2.0-0 libcups2 libdrm2 libxkbcommon0 libatspi2.0-0 libxcomposite1 libxdamage1 libxfixes3 libxrandr2 libgbm1 libpango-1.0-0 libcairo2 libasound2

#./opt/myprint-server/myprint-server start init
