# setup docker https://wiki.alpinelinux.org/wiki/Docker
apk update
apk add docker
addgroup root docker
rc-update add docker boot
service docker start
apk add docker-compose
echo '{"hosts": ["unix:///var/run/docker.sock", "tcp://0.0.0.0:2375"]}' > /etc/docker/daemon.json # expose docker port outside. since we use ssh connect, it is OK