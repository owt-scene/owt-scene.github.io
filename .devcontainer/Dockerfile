# Copyright (c) 2023 Joshua Rich <joshua.rich@gmail.com>
# 
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

FROM mcr.microsoft.com/devcontainers/base:ubuntu
RUN <<EOF
sudo apt-get -y update && export DEBIAN_FRONTEND=noninteractive && \
    sudo apt-get -y install bash-completion fish micro ripgrep fzf pre-commit && \
    apt-get -y autoremove && apt-get -y clean && rm -rf /var/lib/apt/lists/*
EOF
