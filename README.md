# docker中启动 myprint-server

## 构建镜像
```shell
docker build -t myprint-docker .
```
## 启动服务
```shell
docker run -d -p 19898:19898 myprint-docker

#查看日志
docker logs $(docker ps | grep myprint-docker | awk '{print $1}')

#进入容器
docker exec -it $(docker ps | grep myprint-docker | awk '{print $1}') /bin/bash
```

## 请求测试
```shell
curl --request POST \
--output out.pdf \
  --url http://192.168.1.10:19898/print/generatePdf \
  --header 'Accept: */*' \
  --header 'Accept-Encoding: gzip, deflate, br' \
  --header 'Connection: keep-alive' \
  --header 'Content-Type: application/json' \
  --header 'User-Agent: PostmanRuntime-ApipostRuntime/1.1.0' \
  --data '{
    "cmd": "print",
    "content": "<div style=\"  --tcolor: black;\"><div>中文sdf123 - myprint</div></div>",
    "height": 297,
    "width": 210
}'

# 成功会返回一个 out.pdf文件

```

## 加入QQ群聊

<a target="_blank" href="https://qm.qq.com/cgi-bin/qm/qr?k=8uMkIhdhO8DuZclRWZrxU7FhZXor2z-F&jump_from=webapi&authKey=G9+MhuJqLP2Cf3qgjHXbwA/QZKwfq4r0LnHc/dvIoNKbKaFM70bRzGkt5p0UmUd9">
点击加入交流群</a>

qq群：456845432

二维码加群：
![img.png](/qq.png)
