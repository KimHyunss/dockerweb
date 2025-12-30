FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Update & Instal alat dasar + Java untuk Minecraft
RUN apt update -y && apt install -y \
    sudo curl wget git vim net-tools iputils-ping ca-certificates \
    openjdk-17-jdk-headless

# Buka port untuk Minecraft (bukan VNC lagi)
EXPOSE 25565

WORKDIR /root

# Jalankan shell
CMD ["/bin/bash"]
