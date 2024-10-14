# 使用官方 ubuntu 作为父镜像
FROM ubuntu

# 设置工作目录
WORKDIR /var/jenkins_home

# 安装依赖项
RUN apt install

# 复制项目文件
COPY . .

# 暴露端口
EXPOSE 8080

# 运行应用
CMD [ "apt", "start" ]
