FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive
ENV USER root
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

RUN apt-get update && \
    apt-get install -y --no-install-recommends ubuntu-desktop && \
    apt-get install -y gnome-panel gnome-settings-daemon metacity nautilus gnome-terminal && \
    apt-get install -y tightvncserver && \
    apt-get install -y gimp && \
    apt-get install -y inkscape && \
    apt-get install -y python3-pip



ADD https://download.blender.org/release/Blender2.81/blender-2.81a-linux-glibc217-x86_64.tar.bz2 /home/blender2.8/    

ADD xstartup /root/.vnc/xstartup

COPY ./py_path/requirements.txt /home/requirements.txt

RUN cd /usr/bin && \
    echo "#!/bin/sh" > blender && \
    echo "/bin/sh -c \"/home/blender2.8/blender-2.81a-linux-glibc217-x86_64/blender-softwaregl\"" >> blender && \
    chmod +x /usr/bin/blender && \
    ln -s /usr/bin/blender /bin/blender && \
    cd /home/blender2.8/ && \
    tar xjvf blender-2.81a-linux-glibc217-x86_64.tar.bz2 && \
    pip3 install --upgrade pip && \
    pip3 install -r /home/requirements.txt --user

CMD /bin/bash

