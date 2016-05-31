FROM ubuntu:trusty-20160503.1
RUN apt-get -y update
RUN apt-get -y install software-properties-common
RUN apt-get -y update
RUN apt-get -y install bash automake gcc binutils gawk make automake autoconf pkg-config libc6-dev libsdl1.2-dev libsdl-sound1.2-dev libgl1-mesa-dev libmysqlclient-dev libpng12-dev libxmu-dev libxi-dev libplayercore2-dev libplayerc2-dev libltdl3-dev perl python xsltproc git libc6-dev-i386 lib32gcc1 gcc-multilib libgl1-mesa-dev libglu1-mesa-dev libsm-dev libxmu-dev libxi-dev wget libc6-dev-i386 lib32gcc1 gcc-multilib
RUN mkdir -p /home/root/dev/occam
RUN wget http://frmb.org/download/kroc-1.6.0.tar.gz -P /home/root/dev/occam
RUN tar -xvzf /home/root/dev/occam/kroc-1.6.0.tar.gz -C /home/root/dev/occam/
RUN mkdir -p /usr/local/kroc
RUN cd /home/root/dev/occam/kroc-1.6.0/ && ./build --prefix=/usr/local/kroc --with-toolchain=tvm
RUN cd /home/root/dev/occam/kroc-1.6.0 && ./configure --prefix=/usr/local/kroc
RUN cd /home/root/dev/occam/kroc-1.6.0 && make -i
RUN cd /home/root/dev/occam/kroc-1.6.0 && make -i install
