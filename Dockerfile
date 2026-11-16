FROM nginx:stable-alpine

COPY . /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

# 多架构镜像：linux/amd64 + linux/arm64，由 GitHub Actions 自动构建并推送 Docker Hub
