FROM ubuntu:focal

LABEL org.operncontainers.image.authors="Jörn Stuphorn <joern@stuphorn.de>"
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC
ENV PYTHONUNBUFFERED=1
ENV LANG de_DE.utf8

# Update Ubuntu Linux
RUN apt -y update
RUN apt -y upgrade 

# Install environment
RUN apt -y install \
  unzip \
  ant \
  git \
  curl \
  maven \
  wget \
  java-1.8.0-openjdk \
  python3
