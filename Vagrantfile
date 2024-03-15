Vagrant.configure("2") do |config|
    config.vm.box = "geerlingguy/ubuntu1804"
    
    # Puppet Master
    config.vm.define "puppetmaster" do |puppetmaster|
      puppetmaster.vm.hostname = "puppetmaster.lab"
      puppetmaster.vm.network "private_network", ip: "192.168.56.10"
      puppetmaster.vm.provision "shell", path: "scripts/bootstrap-master.sh"
    end
    
    # Puppet Agent 1
    config.vm.define "agent1" do |agent1|
      agent1.vm.hostname = "agent1.lab"
      agent1.vm.network "private_network", ip: "192.168.56.11"
      agent1.vm.provision "shell", path: "scripts/bootstrap-agent.sh"
    end
    
    # Puppet Agent 2
    config.vm.define "agent2" do |agent2|
      agent2.vm.hostname = "agent2.lab"
      agent2.vm.network "private_network", ip: "192.168.56.12"
      agent2.vm.provision "shell", path: "scripts/bootstrap-agent.sh"
    end
  end
  