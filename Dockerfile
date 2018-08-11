FROM debian:stable-slim

LABEL maintainer="hello@tomasiser.com"

WORKDIR /dockercinder

# Install and setup common C++ and git related stuff
RUN apt-get update \
    && echo "deb http://ftp.us.debian.org/debian unstable main contrib non-free" >> /etc/apt/sources.list.d/unstable.list \
    && apt-get update \
    && apt-get install -y \
        git \
        cmake \
        g++-8 \
    && rm -rf /var/lib/apt/lists/* \
    && update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-8 1

# Install Cinder dependencies
RUN apt-get update \
    && apt-get install -y \
        libxcursor-dev \
        libxrandr-dev \
        libxinerama-dev \
        libxi-dev \
        libgl1-mesa-dev \
        libglu1-mesa-dev \
        zlib1g-dev \
        libfontconfig1-dev \
        libmpg123-dev \
        libsndfile1 \
        libsndfile1-dev \
        libpulse-dev \
        libasound2-dev \
        libcurl4-gnutls-dev \
        libgstreamer1.0-dev \
        libgstreamer-plugins-bad1.0-dev \
        libgstreamer-plugins-base1.0-dev \
        gstreamer1.0-libav \
        gstreamer1.0-alsa \
        gstreamer1.0-pulseaudio \
        gstreamer1.0-plugins-bad \
        libboost-all-dev \
    && rm -rf /var/lib/apt/lists/*