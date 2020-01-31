# Ubuntu Desktop Dockerfile

Docker container for Ubuntu 16.04 including ubuntu-desktop and vncserver.

# How to run

`docker run -p 5901:5901 queeno/ubuntu-desktop`

and then connect to:

`vnc://<host>:5901` via VNC client.

The VNC password is `password`.

# Gimp, Inkscape, Blender

Gimp and Inkscape are both in the repo. So,

`apt install gimp inkscape` but,

blender is in URL as tar.bz2, so wget is needed.

`apt install wget`

`ADD` also could do this.

# Py Path

Py path is for manupulating mouse and keys to controle GUI on X Window.
For it, used **pynput** module on `python`

Noted that: this image little big like `3Gb`