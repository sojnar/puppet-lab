#!/usr/bin/env bash
# Instala o Puppet Agent
wget https://apt.puppet.com/puppet7-release-bionic.deb
sudo dpkg -i puppet7-release-bionic.deb
sudo apt-get update
sudo apt-get install -y puppet-agent

# Inicia o Puppet Agent e habilita no boot
sudo /opt/puppetlabs/bin/puppet resource service puppet ensure=running enable=true

# Configura o Puppet Agent para se conectar ao Puppet Master
sudo /opt/puppetlabs/bin/puppet config set server puppetmaster.lab --section main

# Primeira execução do Puppet Agent pode ser acionada aqui, se desejado.
