FROM alibaba-cloud-linux-3-registry.cn-hangzhou.cr.aliyuncs.com/alinux3/alinux3:latest
RUN mkdir /opt/myprint-server
COPY myprint-server  /opt/myprint-server
RUN chmod +x /opt/myprint-server/init.sh
RUN  /opt/myprint-server/init.sh
EXPOSE 19898

ENTRYPOINT ["./opt/myprint-server/myprint-server", "start"]
