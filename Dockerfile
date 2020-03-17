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
        vlc \
    && apt-get autoclean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/*

# Add suppl and plugins

RUN TEMP_DEB="$(mktemp)" && \
  curl -sL -o "$TEMP_DEB" 'https://github.com/Palakis/obs-websocket/releases/download/4.7.0/obs-websocket_4.7.0-1_amd64.deb' && \
  sudo dpkg -i "$TEMP_DEB" && \
  rm -f "$TEMP_DEB"

#CMD [ "/usr/bin/obs" ]

