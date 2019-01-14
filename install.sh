#!/bin/bash

echo "Downloading node-version-manager"
NVM_VERSION=v0.34.0
curl -o- https://raw.githubusercontent.com/creationix/nvm/$NVM_VERSION/install.sh | bash

echo "Creating workspace executes:"
sudo mkdir ~/.executes
sudo mkdir ~/.executes/bin

echo "Copying scripts..."
cp gp ~/.executes/bin
cp gf ~/.executes/bin
cp branch/branch ~/.executes/bin
cp branch/configure ~/.executes/bin
cp openurl ~/.executes/bin
cp rn-refresh ~/.executes/bin
cp nosync ~/.executes/bin

echo "Permissions..."
sudo chmod 754 ~/.executes/bin/gp
sudo chmod 754 ~/.executes/bin/gf
sudo chmod 754 ~/.executes/bin/branch
sudo chmod 754 ~/.executes/bin/configure
sudo chmod 754 ~/.executes/bin/openurl
sudo chmod 754 ~/.executes/bin/rn-refresh
sudo chmod 754 ~/.executes/bin/nosync

echo "Executes done!"
echo "Installing profile:"
. install-profile.sh

echo "All DONE!"