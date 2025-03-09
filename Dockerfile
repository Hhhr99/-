# 使用官方PHP镜像
FROM php:8.1-cli

# 将当前目录内容复制到容器内
COPY . /usr/src/myapp

# 设置容器工作目录
WORKDIR /usr/src/myapp

# 指定默认命令来运行PHP内置服务器
CMD [ "php", "-S", "0.0.0.0:80", "-t", "/usr/src/myapp" ]
