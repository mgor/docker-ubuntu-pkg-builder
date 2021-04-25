FROM ubuntu:latest
MAINTAINER Mikael Göransson <github@mgor.se>

ENV DEBIAN_FRONTEND noninteractive

# Using apt-get due to warning with apt:
# WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
RUN apt-get update && \
    apt-get install -y apt-utils && \
    apt-get install -y \
        automake \
        build-essential \
        cdbs \
        dh-make \
        dh-python \
        dh-autoreconf \
        devscripts \
        git \
        m4 \
        python3-dev \
        python3-pip \
        python3-distutils-extra \
        sudo \
    # Clean up!
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/local/src
CMD /bin/bash
