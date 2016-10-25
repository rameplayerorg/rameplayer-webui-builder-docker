# Build environment for RamePlayer WebUI

# Use official NodeJS base image
FROM node:argon

MAINTAINER Tuomas Jaakola <tuomas.jaakola@iki.fi>

# Install Bower & Gulp
RUN npm install -g bower gulp

ENV BUILD_DIR /build

RUN git clone https://github.com/rameplayerorg/rameplayer-webui.git

WORKDIR rameplayer-webui

RUN npm install && \
    bower install --allow-root

# Mount point for build
VOLUME ["/build"]

# Entrypoint script as guided in
# https://docs.docker.com/engine/userguide/eng-image/dockerfile_best-practices/#/entrypoint
COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]

# open shell by default if no arguments given
CMD ["/bin/bash"]
