#!/bin/env bash

systemctl stop home-assistant@choco.service
source /home/choco/.local/share/virtualenvs/homeassistant-DuUC90Dg/bin/activate
pip3 install --upgrade homeassistant
systemctl start home-assistant@choco.service
