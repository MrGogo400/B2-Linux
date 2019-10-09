BASEHOSTNAME = "wiki"

Vagrant.configure("2") do |config|
  config.vm.box = "generic/debian10"
  config.vm.box_check_update = false


  config.vm.define "#{BASEHOSTNAME}-server" do |server|
    server.vm.network "private_network", ip: "192.168.96.2"
    server.vm.network "forwarded_port", guest: 80, host: 8080

    config.vm.provision :shell, path: "crontab.sh", privileged: true
  end
  config.vm.define "#{BASEHOSTNAME}-backup" do |backup|
    backup.vm.network "private_network", ip: "192.168.96.10"
    backup.vm.network "forwarded_port", guest: 80, host: 8181
  end
  config.vm.provision "shell", inline: <<-SHELL
    export DEBIAN_FRONTEND=noninteractive
    sudo apt-get update
    sudo apt-get install php-geshi -y
    cd /tmp
    wget https://download.dokuwiki.org/src/dokuwiki/dokuwiki-stable.tgz
    tar -xvf dokuwiki-stable.tgz
    sudo rm /var/www/html/index.html
    sudo cp -r dokuwiki-2018-04-22b/* /var/www/html/
    sudo chown -R www-data /var/www/html/
  SHELL

end
