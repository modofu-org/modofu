####################################
# Copyright (c) 2016 - 2017 YMC AG #
###########################################################################
# This program is free software; you can redistribute it and/or modify it #
# under the terms of the GNU General Public License as published by the   #
# Free Software Foundation; either version 2 of the License, or (at your  #
# option) any later version.                                              #
# A copy of the GNU General Public License version 2 is in file GPL-2.    #
###########################################################################

FROM debian:bullseye as doc-server

# Build the documentation-server
ADD docs/Gemfile* /usr/local/share/modofu/doc-server/
RUN apt-get update \
 && apt-get -y --no-install-recommends install \
      build-essential \
      ruby \
      ruby-dev \
      ruby-bundler \
      zlib1g-dev \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* \
 && echo "OK: Dependencies to build the documentation server have been installed"

RUN cd /usr/local/share/modofu/doc-server \
 && bundle config set --local path '/usr/local/share/modofu/doc-server' \
 && bundle install \
 && echo "OK: Documentation server has been build successfully"

FROM debian:bullseye
MAINTAINER YMC IT-Operations <it-operations@ymc.ch>

ARG MODOFU_DOCKER_IMAGE
ENV MODOFU_DOCKER_IMAGE $MODOFU_DOCKER_IMAGE

# Install additional packages
RUN apt-get update \
 && apt-get -y --no-install-recommends install \
      bc \
      jq \
      ruby \
      ruby-bundler \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* \
 && echo "OK"

# Add the documentation-server
COPY --from=doc-server /usr/local/share/modofu/doc-server /usr/local/share/modofu/doc-server

# Add the documentation
ADD docs /usr/local/share/modofu/github-pages

# Add the license files
ADD GPL-2 /usr/local/share/modofu/
ADD MIT-edition-jekyll-template /usr/local/share/modofu/
ADD MIT-lunr-js /usr/local/share/modofu/
ADD CC-BY-3.0-US /usr/local/share/modofu/

# Add our scripts
ADD bin/* /usr/local/bin/
ADD helpers/* /usr/local/share/modofu/
