#!/bin/bash -e

PLUGIN=bolliedelay
GIT_URI="https://github.com/BlokasLabs/bolliedelay.lv2"
TMP_DIR=/tmp/${PLUGIN}

rm -rf ${TMP_DIR}
git clone --depth 1 ${GIT_URI} ${TMP_DIR}
pushd ${TMP_DIR}

CC=arm-linux-gnueabihf-gcc make

make install

mv /usr/local/lib/lv2/${PLUGIN}.lv2 ${LV2_DIR}/${PLUGIN}.lv2

popd

rm -rf ${TMP_DIR}

