#!/bin/bash


##locale {
dpkg-reconfigure tzdata
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
apt update
apt -y install usrmerge
apt -y install build-essential vim rsync openssl curl wget axel traceroute libc6-dev
apt -y install cpanminus youtube-dl sendemail bsdutils tree ufw
apt -y install dnsutils libdns-dev libdns0
apt -y install calibre sshpass ansible perl-doc whois
apt -y install locales dialog git whois unrar
apt -y install r-base r-base-dev chromium git 
apt -y install default-jre default-jdk
##}

##bind{
#apt -y install bind9
##}

##lamp{
apt -y install apache2 libapache2-mod-perl2
apt -y install libapache2-mod-php php php-pear php-curl
apt -y install mariadb-server php-mysql
apt -y install imagemagick php-imagick php-gd  libdbd-mysql-perl
cpanm -n Plack Plack::Handler::Apache2 Minion::Backend::mysql 
a2enmod ssl
systemctl restart apache2
## }

##perl{
apt -y install libwww-perl libclass-methodmaker-perl libb-utils-perl libpadwalker-perl 
apt -y libcrypt-ssleay-perl libxml-parser-perl libdata-dump-streamer-perl libtemplate-perl libjson-perl 
apt -y libarchive-zip-perl perltidy libdist-zilla-perl
apt -y libcrypt-openssl-bignum-perl libcrypt-openssl-ec-perl
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
apt -y install ruby ruby-dev ruby-eventmachine
#gem sources --remove https://rubygems.org/
#gem sources -a https://ruby.taobao.org/
gem sources -a https://rubygems.org/
gem install em-udns

apt -y install cargo
apt -y install certbot apache2 openssl letsencrypt curl
##}

##xs{
apt -y install apache2 libapache2-mod-perl2
apt -y install libapache2-mod-php php php-pear php-curl
apt -y install mariadb-server php-mysql
apt -y install imagemagick php-imagick php-gd
apt -y install exim4 ansible rsync sendemail calibre
cpanm -n Novel::Robot SimpleDBI
cpanm -n Plack Plack::Handler::Apache2 
cpanm -n Mojolicious::Lite Mojolicious::Static Mojo::Template 
cpanm -n Encode::Locale JSON Capture::Tiny Digest::MD5
cpanm -n Minion Config::Simple
##}
