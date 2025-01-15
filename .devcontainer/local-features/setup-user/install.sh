#!/usr/bin/env bash

set -eux

if [ "$(id -u)" -ne 0 ]; then
    echo -e 'Script must be run as root. Use sudo, su, or add "USER root" to your Dockerfile before running this script.'
    exit 1
fi

export DEBIAN_FRONTEND=noninteractive

usermod --shell /usr/bin/zsh root     

ln -s /usr/bin/python3 /usr/bin/python 

ln -s /localhost/.continue /root/.continue
ln -s /localhost/.ssh /root/.ssh
ln -s /localhost/.wakatime.cfg/root/.wakatime.cfg

echo "Done!"
