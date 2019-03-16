#!/bin/sh -e
install -v -o 1000 -g 1000 -d "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/Denarius"
install -v -o 1000 -g 1000 -m 644 "${ROOTFS_DIR}/usr/local/bin/Denarius" "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/Denarius/"
install -v -o 1000 -g 1000 -m 644 "files/Lava-PI-2.jpg" "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/Denarius/"
