sudo apt-get install -y build-essential libpcre3 libpcre3-dev libssl-dev libexpat1-dev libcurl4-openssl-dev apache2-utils libarchive-dev

tar xvf httpd-2.4.49.tar.gz
tar xvf apr-1.7.4.tar.gz
tar xvf apr-util-1.6.3.tar.gz
mv apr-1.7.4 httpd-2.4.49/srclib/apr
mv apr-util-1.6.3 httpd-2.4.49/srclib/apr-util
cd ~/httpd-2.4.49
LDFLAGS=-latomic ./configure --prefix=/usr/local/apache2
sudo make
sudo make install

