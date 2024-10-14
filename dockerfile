# 使用官方 node.js 作为父镜像
FROM node:14

# 设置工作目录
WORKDIR /var/jenkins_home



# 安装依赖项
RUN if [ -f package.json ]; then npm install; fi

# 复制项目文件
COPY . .

# 暴露端口
EXPOSE 8080

# 运行应用
CMD [ "npm", "start" ]
