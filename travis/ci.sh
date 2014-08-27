#!/usr/bin/env sh
git clone https://github.com/php/php-src
cd php-src/ext
git clone https://github.com/krakjoe/ustring
cd ../
./buildconf --force
./configure --disable-all --enable-ustring --enable-icu --enable-maintainer-zts
make -j8
make test TESTS=ext/ustring
make distclean
./configure --disable-all --enable-ustring --enable-icu
make -j8
make test TESTS=ext/ustring
echo "All good things ..."
