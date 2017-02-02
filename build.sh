#!/bin/sh

CONTAINER_IMAGE=${CONTAINER_IMAGE:-nextthingco/chiptainer_alpine}
ROOTFS_URL=${ROOTFS_URL:-https://nl.alpinelinux.org/alpine/v3.5/releases/armhf/alpine-minirootfs-3.5.0-armhf.tar.gz}

wget -c $ROOTFS_URL -O rootfs.tar.gz
docker build -t "${CONTAINER_IMAGE}" .
