# Use Ubuntu Xenial
FROM ubuntu:xenial

# Download build dependencies
RUN apt-get update && apt-get install -y cmake

RUN useradd jenkins --shell /bin/bash --create-home
USER jenkins