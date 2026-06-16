FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    pandoc \
    wget \
    fonts-liberation \
    fonts-dejavu \
    make \
    && rm -rf /var/lib/apt/lists/*

# Download
RUN wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-2/wkhtmltox_0.12.6.1-2.jammy_amd64.deb

# Install and fix dependencies
RUN dpkg -i wkhtmltox_0.12.6.1-2.jammy_amd64.deb || true
RUN apt-get update && apt-get install -f -y

WORKDIR /app