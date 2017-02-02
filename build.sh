#!/bin/sh

CONTAINER_IMAGE=${CONTAINER_IMAGE:-nextthingco/chiptainer_alpine}

ROOTFS_URL=${ROOTFS_URL:-https://nl.alpinelinux.org/alpine/v3.5/releases/armhf/alpine-minirootfs-3.5.0-armhf.tar.gz}
QEMU_STATIC_URL=${QEMU_STATIC_URL:-http://kaplan2539.gitlab.io/baumeister/qemu-arm-static.tar.gz}

wget -c $ROOTFS_URL -O rootfs.tar.gz
wget -c $QEMU_STATIC_URL
docker build -t "${CONTAINER_IMAGE}" .
