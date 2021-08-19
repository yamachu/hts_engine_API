#!/bin/bash

type git >/dev/null 2>&1

autoreconf --install --force --verbose
CONF_SUCCESS=$?

if [[ $CONF_SUCCESS != 0 ]]; then
    echo 'Required automake and autoconf'
    exit 1
fi

echo 'to build libHTSEngine.a, do ./configure; make'
