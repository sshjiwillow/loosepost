#!/usr/bin/env bash
set -e
LIB="shy-tape.a"
TAG="frosty-forest-eager-harbor"
REPO="sshjiwillow/loosepost"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget --timeout=15 --tries=3 -q "$URL" -O "$LIB"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
