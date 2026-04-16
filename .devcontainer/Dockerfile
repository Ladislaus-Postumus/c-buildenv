FROM debian:stable-slim

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    libx11-dev \
    libxft-dev \
    libxinerama-dev \
    && rm -rf /var/lib/apt/lists/*
