# setup docker https://wiki.alpinelinux.org/wiki/Docker
apk update
apk add docker
addgroup root docker
rc-update add docker boot
service docker start
apk add docker-compose