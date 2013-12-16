package mysite;

use Rex -base;

desc "install apache to server1";
task "server1", group => 'servers1', sub {
  install "apache2";
  service apache2 => ensure => "started";
};

desc "install php5 to server2";
task "server2", group => 'servers2', sub {
  install "php5";
};

1;
