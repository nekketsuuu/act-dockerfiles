ARG FROM_TAG=act-latest
FROM ghcr.io/catthehacker/ubuntu:${FROM_TAG}

RUN apt-get -yq update \
 && apt-get -yq install --no-install-recommends moby-compose \
 && cd ~ \
 && curl -fLO https://github.com/docker/compose-switch/releases/download/v1.0.4/docker-compose-linux-amd64 \
 && ( echo '6e84b469dd206eac050ca52c3b7176f7a3385322482e9679c81a16af44ae24c2eb1725472c2056c29d2819485caea74e538997e90d262726f1df101bfd083d2e  docker-compose-linux-amd64' | sha512sum --check --strict ) \
 && mv ~/docker-compose-linux-amd64 /usr/local/bin/docker-compose \
 && chmod +x /usr/local/bin/docker-compose \
 && apt-get clean \
 && rm -rf /var/cache/* /var/log/* /var/lib/apt/lists/* /tmp/*

LABEL org.opencontainers.image.vendor="nekketsuuu"
LABEL org.opencontainers.image.authors="nekketsuuu@sers.noreply.github.com"
LABEL org.opencontainers.image.url="https://github.com/nekketsuuu/act-dockerfiles/tree/master/ubuntu/docker-compose"
LABEL org.opencontainers.image.source="https://github.com/nekketsuuu/act-dockerfiles"
