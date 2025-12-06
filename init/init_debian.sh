#!/bin/bash

##locale {
#cp conf/locale.gen /etc/
perl -i -lpe 's/^\# zh_CN\./ zh_CN./' /etc/locale.gen
locale-gen
##}

##ssh key {
#mkdir /root/.ssh
#cp conf/authorized_keys /root/.ssh/
##}

##only ipv4 {
#cp conf/99force-ipv4 /etc/apt/apt.conf.d/
##}

##base {
cp sources.list /etc/apt/
apt-get update
apt-get -y install usrmerge
apt-get -y install build-essential vim rsync openssl curl wget axel traceroute libc6-dev
apt-get -y install cpanminus youtube-dl sendemail bsdutils 
apt-get -y install dnsutils libdns-dev libdns0
apt-get -y install calibre sshpass ansible
apt-get -y install locales dialog git whois unrar
apt-get -y install r-base r-base-dev chromium git 
apt-get -y install default-jre default-jdk
##}

##bind{
#apt-get -y install bind9
##}

##lamp{
apt-get -y install apache2 libapache2-mod-perl2
apt-get -y install libapache2-mod-php php php-pear php-curl
apt-get -y install mariadb-server php-mysql
apt-get -y install imagemagick php-imagick php-gd
cpanm -n Plack Plack::Handler::Apache2 
## }

##perl{
apt-get -y install libwww-perl libclass-methodmaker-perl libb-utils-perl libpadwalker-perl 
apt-get -y libcrypt-ssleay-perl libxml-parser-perl libdata-dump-streamer-perl libtemplate-perl libjson-perl 
apt-get -y libarchive-zip-perl perltidy libdist-zilla-perl
apt-get -y libcrypt-openssl-bignum-perl libcrypt-openssl-ec-perl
cpanm -n Bytes::Random::Secure
cpanm -n CBOR::XS
cpanm -n Crypt::OpenSSL::EC
cpanm -n Crypt::OpenSSL::ECDSA
cpanm -n Data::MessagePack
cpanm -n Data::Validate::IP
cpanm -n Devel::NYTProf
cpanm -n FindBin
cpanm -n Gearman::Worker
cpanm -n JSON
cpanm -n Math::Prime::Util
cpanm -n Module::Install
cpanm -n Mojolicious::Lite
cpanm -n Novel::Robot
cpanm -n Plack::Handler::Apache2
cpanm -n Simple::Html
cpanm -n Simple::IPInfo
cpanm -n SimpleDBI
cpanm -n SimpleR::Reshape
cpanm -n SimpleR::Stat
cpanm -n snaked
cpanm -n WWW::Mechanize::Chrome
##}

##develop{
apt-get -y install ruby ruby-dev ruby-eventmachine
#gem sources --remove https://rubygems.org/
#gem sources -a https://ruby.taobao.org/
gem sources -a https://rubygems.org/
gem install em-udns

apt-get -y install cargo
##}
