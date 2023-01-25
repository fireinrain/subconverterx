# subconverterx
A dockerfile that for build subconverter docker image for daily use!

订阅链接转换工具镜像

使用指南:

```bash
1. 下载docker-compose.yml 与pref.ini 文件
2. 修改pref.ini 中api_access_token 和 insert_url 为自己的值
3. 上传上述两个文件到服务器目录 可使用`docker-compose -f docker-compose.yml up -d`启动容器
```
特点: 加入负载均衡配置，各服务节点雨露均沾