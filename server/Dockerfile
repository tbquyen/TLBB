FROM debian:bullseye

# Cài đặt các gói cần thiết
RUN dpkg --add-architecture i386 && \
  apt update && \
  apt install -y \
  libc6-i386 \
  gcc-multilib \
  libstdc++6:i386 \
  libgcc1:i386 \
  libcurl4-gnutls-dev:i386 \
  unixodbc:i386 \
  procps

# Liên kết libodbc cho TLBB gọi đúng
RUN ln -s /usr/lib/i386-linux-gnu/libodbc.so.2.0.0 /usr/lib/libodbc.so.1 || true

# Copy file cấu hình ODBC nếu bạn cần (tuỳ chỉnh thêm)
COPY ./etc/odbc.ini /etc/odbc.ini
COPY ./etc/odbcinst.ini /etc/odbcinst.ini

# Copy game và start script nếu có
WORKDIR /app

COPY ./odbc ./odbc

COPY ./billing ./billing

COPY ./tlbb.tar.gz .
RUN tar -xvzf tlbb.tar.gz

COPY ./tlbb-config ./tlbb

RUN chmod -R 777 .
