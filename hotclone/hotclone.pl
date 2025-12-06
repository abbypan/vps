#!/usr/bin/perl

my ( $src_host, $src_port ) = @ARGV;
$src_port ||= 22;

system( qq[apt-get update] );
system( qq[apt-get -y install rsync] );
system(
  qq[rsync --rsh "ssh -p$src_port -o StrictHostKeyChecking=no " -avz --exclude-from=hotclone_exclude.txt --delete  root\@$src_host:/ /]
);
system( qq[crontab backup.crontab] );
