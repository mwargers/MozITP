# Install NVM
sudo apt-get update
sudo apt-get install install build-essential libssl-dev
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.26.1/install.sh | bash #Notice the version may change
source ~/.nvm/nvm.sh
nvm install 0.12
nvm use 0.12

# Get gaia code
sudo apt-get install -y libfontconfig1 libasound2 libgtk2.0-0 python-pip
sudo apt-get install -y xvfb
git clone https://github.com/mozilla-b2g/gaia.git ~/gaia --depth=3 # shallow clone
cd ~/gaia

Xvfb :10 -ac 2> /dev/null & # Open xvfb on display 10, surpressing the error log
export DISPLAY=:10

make test-integration

killall Xvfb
