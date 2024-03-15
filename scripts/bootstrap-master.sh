#!/usr/bin/env bash
# Instala o Puppet Server
wget https://apt.puppet.com/puppet7-release-bionic.deb
sudo dpkg -i puppet7-release-bionic.deb
sudo apt-get update
sudo apt-get install -y puppetserver

# Configura o Puppet Server para iniciar automaticamente
sudo systemctl start puppetserver
sudo systemctl enable puppetserver

# Configurações adicionais, como ajustes de memória, podem ser feitas aqui.
