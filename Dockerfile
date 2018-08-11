FROM tomasiser/docker-cinder:latest

WORKDIR /dockercinder-prebuilt

# Fetch and build Cinder
RUN git clone --recurse-submodules -j8 https://github.com/cinder/Cinder.git . \
    && git reset --hard 35e555f1c631cc58a7f2bf3ea916ddbdf74ba477 \
    && rm -rf .git \
    && mkdir build \
    && cd build \
    && cmake .. -DCINDER_BOOST_USE_SYSTEM=1 \
    && make

WORKDIR /dockercinder