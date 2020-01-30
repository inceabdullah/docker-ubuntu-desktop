FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive
ENV USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends ubuntu-desktop && \
    apt-get install -y gnome-panel gnome-settings-daemon metacity nautilus gnome-terminal && \
    apt-get install -y tightvncserver && \
    apt-get install -y gimp && \
    apt-get install -y inkscape && \
    mkdir /root/.vnc

ADD https://download.blender.org/release/Blender2.81/blender-2.81a-linux-glibc217-x86_64.tar.bz2 /root/blender2.8    

ADD xstartup /root/.vnc/xstartup
ADD passwd /root/.vnc/passwd

RUN chmod 600 /root/.vnc/passwd
RUN cd /usr/bin && \
    echo "#!/bin/sh" > blender && \
    echo "/bin/sh -c \"/root/blender2.8/blender-2.8*/blender-so*\"" >> blender && \
    ln -s /usr/bin/blender /bin/blender

CMD /usr/bin/vncserver :1 -geometry 1280x800 -depth 24 && tail -f /root/.vnc/*:1.log

EXPOSE 5901
