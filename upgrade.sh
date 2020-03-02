#!/bin/env bash
eval "$(pyenv init -)"
systemctl stop home-assistant@choco.service
pyenv activate homeassistant
pip install --upgrade homeassistant
systemctl start home-assistant@choco.service
