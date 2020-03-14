# obs-studio-headless

See https://hub.docker.com/r/dorowu/ubuntu-desktop-lxde-vnc for VNC configuration



Example:
~~~
  docker run --rm -p 5900:5900 -e VNC_PASSWORD=mypassword -v /dev/shm -v $PWD/obs-settings:/root/.config/obs-studio -v $PWD/media:/root/media jwater7/obs-studio-headless
~~~
