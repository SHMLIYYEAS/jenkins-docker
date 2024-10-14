# 使用官方 node.js 作为父镜像
FROM node:14

# 设置工作目录
WORKDIR /var/jenkins_home

# 复制 package.json 和 package-lock.jso
COPY package*.json ./

# 安装依赖项
RUN npm install

# 复制项目文件
COPY . .

# 暴露端口
EXPOSE 8080

# 运行应用
CMD [ "npm", "start" ]
