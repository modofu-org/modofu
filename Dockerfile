####################################
# Copyright (c) 2016 - 2017 YMC AG #
###########################################################################
# This program is free software; you can redistribute it and/or modify it #
# under the terms of the GNU General Public License as published by the   #
# Free Software Foundation; either version 2 of the License, or (at your  #
# option) any later version.                                              #
# A copy of the GNU General Public License version 2 is in file GPL-2.    #
###########################################################################

FROM debian:stretch
MAINTAINER YMC IT-Operations <it-operations@ymc.ch>

ARG MODOFU_DOCKER_IMAGE
ENV MODOFU_DOCKER_IMAGE $MODOFU_DOCKER_IMAGE

# Install additional packages
RUN apt-get update \
 && apt-get -y install \
      bc \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* \
 && echo "OK"

# Add the license files
ADD GPL-2 /usr/local/share/modofu/
ADD MIT-edition-jekyll-template /usr/local/share/modofu/
ADD MIT-lunr-js /usr/local/share/modofu/

# Add our scripts
ADD bin/* /usr/local/bin/
ADD helpers/* /usr/local/share/modofu/

