#Azure CDN加速
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1 AS base
# 设置默认时区
ENV TZ=Asia/Shanghai

RUN apt-get update && apt-get install -y apt-utils libgdiplus libc6-dev xvfb x11vnc x11-xkb-utils xfonts-100dpi xfonts-75dpi xfonts-scalable xfonts-cyrillic x11-apps libx11-dev && ln -s libgdiplus.so gdiplus.dll

WORKDIR /app
EXPOSE 80
EXPOSE 443