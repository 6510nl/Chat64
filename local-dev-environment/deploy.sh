sudo apt update
sudo apt install -y git
sudo apt install -y build-essential
sudo apt install -y libgtk-3-dev
sudo apt install -y libasound2-dev
sudo apt install -y libcurl4-openssl-dev
sudo apt install -y libx11-dev
sudo apt install -y libxext-dev
sudo apt install -y libxrandr-dev
sudo apt install -y libxinerama-dev
sudo apt install -y libxv-dev
sudo apt install -y libpulse-dev
sudo apt install -y libpng-dev
sudo apt install -y libjpeg-dev
sudo apt install -y libreadline-dev
sudo apt install -y libbz2-dev
sudo apt install -y zlib1g-dev
sudo apt install -y libglew-dev

sudo apt install -y flex
sudo apt install -y byacc
sudo apt install -y bison
sudo apt install -y dos2unix
sudo apt install -y xa65

sudo apt install -y autoconf

sudo apt install openjdk-17-jre -y

mkdir tools
mkdir tools/KickAssembler
wget https://theweb.dk/KickAssembler/KickAssembler.zip --output-document=tools/KickAssembler/KickAssembler.zip
unzip tools/KickAssembler/KickAssembler.zip -d tools/KickAssembler/

git clone -b chat64 https://github.com/6510nl/vice-mirror tools/vice-mirror

cd tools/vice-mirror/vice/
./autogen.sh
mkdir $HOME/vice-compiled/
./configure --prefix=$HOME/vice-compiled/
make install

cd ../../..
wget https://www.zimmers.net/anonftp/pub/cbm/firmware/computers/c64/kernal.901227-03.bin --output-document=$HOME/vice-compiled/share/vice/C64/kernal-901227-03.bin
wget https://www.zimmers.net/anonftp/pub/cbm/firmware/computers/c64/basic.901226-01.bin --output-document=$HOME/vice-compiled/share/vice/C64/basic-901226-01.bin
wget https://www.zimmers.net/anonftp/pub/cbm/firmware/computers/c64/characters.901225-01.bin --output-document=$HOME/vice-compiled/share/vice/C64/chargen-901225-01.bin

