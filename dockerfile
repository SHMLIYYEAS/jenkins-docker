# 使用官方 Node.js 作为父镜像
FROM node:14

# 设置工作目录
WORKDIR /app

# 安装依赖项
COPY package*.json ./
RUN npm install

# 复制项目文件
COPY . .

# 暴露端口
EXPOSE 8080

# 运行应用
CMD [ "npm", "start" ]
