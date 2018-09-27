#!/bin/sh

set -u
set -e

tar -czf ${HOST_DIR}/../images/toolchain.tar.gz -C ${HOST_DIR}/ .
#sshpass -p 'raspberry' scp -o StrictHostKeyChecking=no /tmp/toolchain.tar.gz pi@RASP1:
#sshpass -p 'raspberry' scp -o StrictHostKeyChecking=no ${BINARIES_DIR}/sdcard.img pi@RASP1:
