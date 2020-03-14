# obs-studio-headless

Example:
~~~
  docker run --rm -p 5900:5900 -e VNC_PASSWORD=mypassword -v /dev/shm -v ./obs-settings:/root/.config/obs-studio jwater7/obs-studio-headless
~~~
