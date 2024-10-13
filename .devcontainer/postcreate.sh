#!/usr/bin/env bash

# Copyright (c) 2023 Joshua Rich <joshua.rich@gmail.com>
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

set -e

# Add hugo shell completions.
sudo /usr/local/hugo/bin/hugo completion bash | sudo tee /etc/bash_completion.d/hugo > /dev/null
sudo /usr/local/hugo/bin/hugo completion fish | sudo tee /etc/fish/completions/hugo > /dev/null

# Install and configure starship.
curl -sS https://starship.rs/install.sh | sh -s -- -y || exit -1
mkdir -p ~/.config/fish
echo "starship init fish | source" >>~/.config/fish/config.fish
echo 'eval "$(starship init bash)"' >>~/.bashrc

exit 0
