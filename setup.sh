#!/bin/bash

type git >/dev/null 2>&1
GIT_EXIST=$?

# Get latest World library
if [[ $GIT_EXIST = 0 ]]; then
    git clone https://github.com/mmorise/World.git
else
    wget -O World_master.zip https://github.com/mmorise/World/archive/master.zip
    unzip World_master.zip
    mv World-master World
fi

pushd World
make
popd

# Get latest SPTK
if [[ $GIT_EXIST = 0 ]]; then
    git clone https://github.com/yamachu/SPTK.git
else
    wget -O SPTK_master.zip https://github.com/yamachu/SPTK/archive/master.zip
    unzip SPTK_master.zip
    mv SPTK-master SPTK
fi

pushd SPTK
./configure
make
popd

autoreconf --install --force --verbose
CONF_SUCCESS=$?

if [[ $CONF_SUCCESS != 0 ]]; then
    echo 'Required automake and autoconf'
    exit 1
fi

echo 'Dependent library download finished'
echo 'to build libHTSEngine.a, do ./configure; make'
