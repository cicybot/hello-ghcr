FROM ubuntu:latest

LABEL org.opencontainers.image.source="https://github.com/cicybot/hello-ghcr" \
      org.opencontainers.image.title="Container says Meow!" \
      org.opencontainers.image.description="This container will meow at you."
ENV DEBIAN_FRONTEND=noninteractive

RUN  apt-get update && \
    apt-get install -y --no-install-recommends \
    sudo ubuntu-desktop-minimal gnome-session gnome-shell ubuntu-session gnome-terminal   tigervnc-standalone-server netcat-openbsd curl x11-xserver-utils xauth dbus-x11 xorg xserver-xorg-core   xserver-xorg-input-all xserver-xorg-video-dummy x11-apps policykit-1 colord speech-dispatcher


# COPY meow.sh /
# ENTRYPOINT ["/meow.sh"]
