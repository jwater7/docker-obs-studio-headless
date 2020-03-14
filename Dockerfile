FROM dorowu/ubuntu-desktop-lxde-vnc
LABEL maintainer "j"

ENV DEBIAN_FRONTEND noninteractive

ENV OBS_VERSION 24.0.3-0obsproject1~bionic
RUN apt-get update \
    && apt-get install -y software-properties-common curl \
    && add-apt-repository "ppa:obsproject/obs-studio" \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        ffmpeg \
        obs-studio=${OBS_VERSION} \
    && apt-get autoclean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/*

#CMD [ "/usr/bin/obs" ]

