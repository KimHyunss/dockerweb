FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Update dan instal Java + Python (untuk mancing agar server tetap hidup)
RUN apt update -y && apt install -y sudo curl wget git vim net-tools iputils-ping ca-certificates openjdk-17-jdk-headless python3

WORKDIR /root

# Railway butuh port ini untuk tetap hidup
EXPOSE 8080

# Jalankan web server sederhana di port 8080 agar statusnya "Running"
CMD python3 -m http.server 8080
