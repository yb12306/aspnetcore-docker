#Azure CDN加速
FROM mcr.microsoft.com/dotnet/core/aspnet:2.2 AS base
# 设置默认时区
ENV TZ=Asia/Shanghai
ENV LANG C.UTF-8

# 安装libgdiplus库，用于Excel导出、Fastreport
RUN apt-get update && apt-get install -y apt-utils telnet vim libgdiplus libc6-dev xvfb x11vnc x11-xkb-utils xfonts-100dpi xfonts-75dpi xfonts-scalable xfonts-cyrillic x11-apps libx11-dev && ln -s libgdiplus.so gdiplus.dll

WORKDIR /app
EXPOSE 80
EXPOSE 443