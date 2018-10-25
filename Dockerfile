FROM tomasiser/docker-cinder:prebuilt

WORKDIR /dockercinder

RUN apt-get update \
    && apt-get install -y \
        libcgal-dev \
        libassimp-dev \
    && rm -rf /var/lib/apt/lists/*
