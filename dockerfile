# 使用官方 node.js 作为父镜像
FROM node:14

# 设置工作目录
WORKDIR /var/jenkins_home

# 使用 ARG 指令来定义基础镜像参数
ARG BASE_IMAGE

# 使用 FROM 指令来指定基础镜像
FROM ${BASE_IMAGE}

# 安装依赖项
RUN if [ -f package.json ]; then npm install; fi

# 复制项目文件
COPY . .

# 暴露端口
EXPOSE 8080

# 运行应用
CMD [ "npm", "start" ]
