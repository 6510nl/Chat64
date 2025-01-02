sudo apt update
sudo apt install -y \
    git \
    build-essential \
    libgtk-3-dev \
    libasound2-dev \
    libcurl4-openssl-dev \
    libx11-dev \
    libxext-dev \
    libxrandr-dev \
    libxinerama-dev \
    libxv-dev \
    libpulse-dev \
    libpng-dev \
    libjpeg-dev \
    libreadline-dev \
    libbz2-dev \
    zlib1g-dev \
    libglew-dev \
    flex \
    byacc \
    bison \
    dos2unix \
    xa65 \
    autoconf \
    openjdk-17-jre

mkdir tools
mkdir tools/KickAssembler
wget https://theweb.dk/KickAssembler/KickAssembler.zip --output-document=tools/KickAssembler/KickAssembler.zip
unzip tools/KickAssembler/KickAssembler.zip -d tools/KickAssembler/

git clone -b chat64 https://github.com/6510nl/vice-mirror tools/vice-mirror

cd tools/vice-mirror/vice/
./autogen.sh
mkdir $HOME/vice-compiled/
./configure --prefix=$(pwd)/../../../tools/vice-compiled/
make install

cd ../../..
wget https://www.zimmers.net/anonftp/pub/cbm/firmware/computers/c64/kernal.901227-03.bin --output-document=$(pwd)/tools/vice-compiled/share/vice/C64/kernal-901227-03.bin
wget https://www.zimmers.net/anonftp/pub/cbm/firmware/computers/c64/basic.901226-01.bin --output-document=$(pwd)/tools/vice-compiled/share/vice/C64/basic-901226-01.bin
wget https://www.zimmers.net/anonftp/pub/cbm/firmware/computers/c64/characters.901225-01.bin --output-document=$(pwd)/tools/vice-compiled/share/vice/C64/chargen-901225-01.bin

