#Azure CDN加速
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1 AS base
# 设置默认时区
ENV TZ=Asia/Shanghai
ENV LANG C.UTF-8
#修改openssl版本，解决sqlserver无法连接问题
RUN sed -i "s/TLSv1.2/TLSv1.0/g" /etc/ssl/openssl.cnf
# 安装libgdiplus库，用于Excel导出、Fastreport
RUN apt-get update && apt-get install -y apt-utils telnet vim libgdiplus libc6-dev xvfb x11vnc x11-xkb-utils xfonts-100dpi xfonts-75dpi xfonts-scalable xfonts-cyrillic x11-apps libx11-dev && ln -s libgdiplus.so gdiplus.dll

WORKDIR /app
EXPOSE 80
EXPOSE 443