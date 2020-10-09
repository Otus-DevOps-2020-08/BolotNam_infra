#!/bin/bash
set -e
APP_DIR=${1:-$HOME}
sleep 30s
sudo apt-get install -y git
sleep 30s
git clone -b monolith https://github.com/express42/reddit.git $APP_DIR/reddit
cd $APP_DIR/reddit
bundle install
sleep 30s
sudo mv /tmp/puma.service /etc/systemd/system/puma.service
sudo systemctl start puma
sudo systemctl enable puma
