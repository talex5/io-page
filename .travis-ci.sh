PACKAGE=io-page
wget https://raw.githubusercontent.com/samoht/ocaml-travisci-skeleton/master/.travis-opam.sh
sh .travis-opam.sh

export OPAMYES=1
eval `opam config env`
prefix=`opam config var prefix`

./configure --prefix=$prefix --enable-tests
make
make test
make install
