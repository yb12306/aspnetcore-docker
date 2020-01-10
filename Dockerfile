#Azure CDN加速
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1 AS base
# 设置默认时区
ENV TZ=Asia/Shanghai

RUN apt-get update && apt-get install -y apt-utils libgdiplus libc6-dev

WORKDIR /app
EXPOSE 80
EXPOSE 443