#!/usr/bin/env bash

# Copyright (c) 2023 Joshua Rich <joshua.rich@gmail.com>
# 
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

set -e

sudo /usr/local/hugo/bin/hugo completion bash | sudo tee /etc/bash_completion.d/hugo > /dev/null
sudo /usr/local/hugo/bin/hugo completion fish | sudo tee /etc/fish/completions/hugo > /dev/null
