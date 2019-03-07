#!/bin/bash -e
on_chroot << EOF
  apt-get install make
  wget https://www.openssl.org/source/openssl-1.0.1j.tar.gz
  tar -xzvf openssl-1.0.1j.tar.gz
  cd openssl-1.0.1j
  ./config --openssldir=/usr/local/openssl1.0.1j shared
  make
# make test
  make install
  ln -s /usr/local/openssl1.0.1j /usr/local/openssl

  git clone https://github.com/carsenk/denarius
  cd denarius
  git checkout v3.4
  git pull
  cd src
  OPENSSL_INCLUDE_PATH=/usr/local/openssl/include OPENSSL_LIB_PATH=/usr/local/openssl/lib make -f makefile.arm
  strip denariusd
  cp denariusd /usr/local/bin/denariusd
EOF
